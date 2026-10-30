# Deprecated shapes

The SHACL files in this directory are outdated copies of the CSDM model shapes. They still use retired IRIs (for
example the CSDM Common Patterns compound name terms, the old CSDM parcels namespace and geometry terms in the
GeoSPARQL namespace), and no building block in this register uses them any more.

The maintained shapes are part of the CSDM ontology blocks in the
[3D CSDM model register](https://surroundaustralia.github.io/3d-csdm-model/):

| Deprecated file | Replaced by |
|---|---|
| `common_patterns.shapes.ttl` | `icsm.csdm.model.commonpatterns` (measures, quality) and `ogc.bbr.utils.compoundName.ontology` (compound names) |
| `container.shapes.ttl` | `icsm.csdm.model.container` |
| `geometryprimitives.shapes.ttl` | `icsm.csdm.model.geometry` |
| `survey_features.shapes.ttl` | `icsm.csdm.model.surveyfeatures` |
| `vector_observations.shapes.ttl` | `icsm.csdm.model.surveyobs` |
| `parcel_module.shapes.ttl` | none: the CSDM parcels module was replaced by OGC Land Parcels (`icsm.csdm.model.parcelsalignment` maps the old terms) |
| `reqmetamodel.shapes.ttl` | `icsm.csdm.utility.reqmetamodel` |
| `speclist.shapes.ttl` | `icsm.csdm.utility.impspecs` |

The schema blocks `CSD`, `SurveyFeatures` and `SurveyObservations` depend on the corresponding model blocks, so the
model shapes, including their OWL consistency shapes, are applied when the examples here are validated.

These files will be removed in a later version.
