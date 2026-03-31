
# Compound Name (Schema)

`icsm.csdm.datatypes.compoundName` *v0.1*

A multiple part name, consisting of a set of strings with functional roles that can be combined into single string using a template.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Example CompoundName
A name with a label, but also a set of parts with roles that can be validated against content rules.
#### json
```json
{
    "id": "CompoundNameExample",
    "type": "CompoundName",
    "label": "IS II - DP 3333",
    "comment": "note: label may be absent or subject to rules regarding presence of parts",
    "hasPart": [
        {
            "type": "Source",
            "label": "DP 3333"
        },
        {
            "type": "Stamp",
            "label": "IS II"
        }
    ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/compoundName/context.jsonld",
  "id": "CompoundNameExample",
  "type": "CompoundName",
  "label": "IS II - DP 3333",
  "comment": "note: label may be absent or subject to rules regarding presence of parts",
  "hasPart": [
    {
      "type": "Source",
      "label": "DP 3333"
    },
    {
      "type": "Stamp",
      "label": "IS II"
    }
  ]
}
```

#### ttl
```ttl
@prefix commonpatterns: <https://linked.data.gov.au/def/csdm/commonpatterns/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

[] rdfs:label "IS II - DP 3333" ;
    dcterms:hasPart [ rdfs:label "DP 3333" ;
            commonpatterns:namePartType "Source" ],
        [ rdfs:label "IS II" ;
            commonpatterns:namePartType "Stamp" ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Compound Name
properties:
  label:
    anyOf:
    - type: 'null'
    - type: string
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
  template:
    type: string
  hasPart:
    type: array
    items:
      type: object
      properties:
        label:
          type: string
          x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
        type:
          type: string
          x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/namePartType
      required:
      - label
    x-jsonld-id: http://purl.org/dc/terms/hasPart
x-jsonld-extra-terms:
  name: https://linked.data.gov.au/def/csdm/commonpatterns/name
  CompoundName: https://linked.data.gov.au/def/csdm/commonpatterns/CompoundName
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/
  commonpatterns: https://linked.data.gov.au/def/csdm/commonpatterns/
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  csdm: https://linked.data.gov.au/def/csdm/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/compoundName/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/compoundName/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "name": "commonpatterns:name",
    "CompoundName": "commonpatterns:CompoundName",
    "label": "rdfs:label",
    "hasPart": {
      "@context": {
        "type": "commonpatterns:namePartType"
      },
      "@id": "dct:hasPart"
    },
    "dct": "http://purl.org/dc/terms/",
    "commonpatterns": "csdm:commonpatterns/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "csdm": "https://linked.data.gov.au/def/csdm/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/compoundName/context.jsonld)

## Sources

* [CSDM model](https://github.com/icsm-au/3d-csdm)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/datatypes/compoundName`

