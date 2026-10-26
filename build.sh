#!/bin/bash
# Process building blocks
if [ -f '.volumes' ]; then
  while read -r line || [ -n "${line}" ]; do
    line=${line%$'\r'}
    [ -z "${line}" ] && continue
    host=${line%%:/*}
    target=/${line#*:/}
    # Resolve to a physical absolute path (relative entries are relative to this directory) and fail
    # if it's missing: Docker would otherwise silently mount an empty directory in its place.
    if ! resolved=$(cd "${host}" 2>/dev/null && pwd -P); then
      echo "build.sh: .volumes entry '${line}': '${host}' not found from $(pwd)" >&2
      exit 1
    fi
    # An empty directory usually means Docker created it as a stand-in, e.g. when run from a
    # /mnt/wsl/docker-desktop-bind-mounts/... copy of this directory, which has no real siblings
    if [ -z "$(ls -A "${resolved}")" ]; then
      echo "build.sh: .volumes entry '${line}': '${resolved}' is empty (running from $(pwd))" >&2
      exit 1
    fi
    echo "build.sh: mounting ${resolved} -> ${target}" >&2
    VOLUMES="${VOLUMES}-v ${resolved}:${target} "
  done < .volumes
fi
# -it only when attached to a terminal, so permission prompts can be answered; without one
# (agents, CI, scripted runs) pass --skip-permissions true instead
docker run $([ -t 0 ] && [ -t 1 ] && echo -it ) --pull=always --rm --workdir /workspace -v "$(pwd):/workspace" ${VOLUMES} \
  ghcr.io/opengeospatial/bblocks-postprocess:${BBP_IMAGE_TAG:-latest} \
  --clean true --base-url http://localhost:9090/register/ "$@"
