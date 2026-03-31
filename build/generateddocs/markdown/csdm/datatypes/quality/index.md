
# SurveyQuality (Schema)

`icsm.csdm.datatypes.quality` *v0.1*

A extensible quality descriptor object with standard properties for survey point and vector observations.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Example Quality Object
Example quality object.
 
Schema checking is limited to datatypes of present properties as all are optional.
#### json
```json
{
  "distanceAccuracy": 0.000100138048,
  "angleAccuracy": 0.028154691543,
  "distanceAccuracyClass": "http://any.valid/",
  "angleAccuracyClass": "http://any.valid/"
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/quality/context.jsonld",
  "distanceAccuracy": 0.000100138048,
  "angleAccuracy": 0.028154691543,
  "distanceAccuracyClass": "http://any.valid/",
  "angleAccuracyClass": "http://any.valid/"
}
```

#### ttl
```ttl
@prefix ns1: <https://linked.data.gov.au/def/csdm/surveyobs/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

[] ns1:angleAccuracyClass <http://any.valid/> ;
    ns1:angleAccuracyMeasure 2.815469e-02 ;
    ns1:distanceAccuracyClass <http://any.valid/> ;
    ns1:distanceAccuracyMeasure 1.00138e-04 .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Survey Vector Observation Quality
properties:
  angleAccuracy:
    type: number
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/angleAccuracyMeasure
  distanceAccuracy:
    type: number
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/distanceAccuracyMeasure
  distanceAccuracyClass:
    type: string
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/distanceAccuracyClass
  angleAccuracyClass:
    type: string
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/angleAccuracyClass
x-jsonld-prefixes:
  csdm: https://linked.data.gov.au/def/csdm/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/quality/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/quality/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "angleAccuracy": "csdm:surveyobs/angleAccuracyMeasure",
    "distanceAccuracy": "csdm:surveyobs/distanceAccuracyMeasure",
    "distanceAccuracyClass": {
      "@type": "@id",
      "@id": "csdm:surveyobs/distanceAccuracyClass"
    },
    "angleAccuracyClass": {
      "@type": "@id",
      "@id": "csdm:surveyobs/angleAccuracyClass"
    },
    "csdm": "https://linked.data.gov.au/def/csdm/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/quality/context.jsonld)

## Sources

* [CSDM model](https://github.com/icsm-au/3d-csdm)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/datatypes/quality`

