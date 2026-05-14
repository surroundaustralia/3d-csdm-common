
# Survey Observations (Schema)

`icsm.csdm.features.SurveyObservations` *v0.1*

An Observation specialisation for an aspect of a survey - typically vectors with new or adopted bearings and distances.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## Survey Point

Any point of interest in a survey. It may relate to a boundary corner (marked or unmarked), a cadastral mark, a geodetic reference mark, or an occupation mark.

This is an abstract class, usually implemented by a subclass such as a SurevyMark with additional details.


## Examples

### New 2D vector
An example observation of a vector based on bearing and distance - in 2D
#### json
```json
{
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResultQuality": {
      "distanceAccuracy": 0.000100138048,
      "angleAccuracy": 0.028154691543,
      "distanceAccuracyClass": "http://any.valid/",
      "angleAccuracyClass": "http://any.valid/"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38
        },
        "distance": 333207.1
      }
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld",
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResultQuality": {
      "distanceAccuracy": 0.000100138048,
      "angleAccuracy": 0.028154691543,
      "distanceAccuracyClass": "http://any.valid/",
      "angleAccuracyClass": "http://any.valid/"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38
        },
        "distance": 333207.1
      }
    }
  }
}
```

#### ttl
```ttl
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix geopose: <https://linked.data.gov.au/def/csdm/utils/geopose/> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/surveyobs/> .
@prefix ns2: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

[] a geojson:Feature ;
    sosa:hasFeatureOfInterest <file:///github/workspace/l973158> ;
    sosa:hasResult [ surv:pose [ surv:distance 3.332071e+05 ;
                    geopose:angles [ ] ] ] ;
    sosa:hasResultQuality [ ns1:angleAccuracyClass <http://any.valid/> ;
            ns1:angleAccuracyMeasure 2.815469e-02 ;
            ns1:distanceAccuracyClass <http://any.valid/> ;
            ns1:distanceAccuracyMeasure 1.00138e-04 ] ;
    sosa:madeBySensor [ a ns2:DifferentialGPS ;
            ns2:baseSensor "gps+38666" ;
            ns2:roverSensor "gps+37544" ] ;
    sosa:observedProperty <https://linked.data.gov.au/def/csdm/property/pose> ;
    sosa:resultTime "2023-05-22T16:41:00" .


```


### New 3D vector
An example observation of a vector based on bearing,pitch (azimuth angle) and distance - in 3D
#### json
```json
{
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38,
          "pitch": -0.001
        },
        "distance": 333207.1
      }
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld",
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38,
          "pitch": -0.001
        },
        "distance": 333207.1
      }
    }
  }
}
```

#### ttl
```ttl
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix geopose: <https://linked.data.gov.au/def/csdm/utils/geopose/> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

[] a geojson:Feature ;
    sosa:hasFeatureOfInterest <file:///github/workspace/l973158> ;
    sosa:hasResult [ surv:pose [ surv:distance 3.332071e+05 ;
                    geopose:angles [ ] ] ] ;
    sosa:madeBySensor [ a ns1:DifferentialGPS ;
            ns1:baseSensor "gps+38666" ;
            ns1:roverSensor "gps+37544" ] ;
    sosa:observedProperty <https://linked.data.gov.au/def/csdm/property/pose> ;
    sosa:resultTime "2023-05-22T16:41:00" .


```


### Distance (Adopted bearing)
Example Survey Observation - vector only distance
#### json
```json
{
  "type": "Feature",
  "geometry": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00+2",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "distance": 333207.1
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld",
  "type": "Feature",
  "geometry": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00+2",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "distance": 333207.1
    }
  }
}
```

#### ttl
```ttl
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

[] a geojson:Feature ;
    sosa:hasFeatureOfInterest <file:///github/workspace/l973158> ;
    sosa:hasResult [ surv:distance 3.332071e+05 ] ;
    sosa:madeBySensor [ a ns1:DifferentialGPS ;
            ns1:baseSensor "gps+38666" ;
            ns1:roverSensor "gps+37544" ] ;
    sosa:observedProperty <https://linked.data.gov.au/def/csdm/property/pose> ;
    sosa:resultTime "2023-05-22T16:41:00+2" .


```


### Bearing (Adopted distance)
Example Survey Observation - vector only bearing
#### json
```json
{
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38,
          "pitch": -0.001
        }
      }
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld",
  "type": "Feature",
  "geometry": null,
  "time": null,
  "place": null,
  "properties": {
    "hasFeatureOfInterest": "l973158",
    "observedProperty": "pose",
    "resultTime": "2023-05-22T16:41:00",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    },
    "hasResult": {
      "pose": {
        "angles": {
          "yaw": 231.38,
          "pitch": -0.001
        }
      }
    }
  }
}
```

#### ttl
```ttl
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix geopose: <https://linked.data.gov.au/def/csdm/utils/geopose/> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .

[] a geojson:Feature ;
    sosa:hasFeatureOfInterest <file:///github/workspace/l973158> ;
    sosa:hasResult [ surv:pose [ geopose:angles [ ] ] ] ;
    sosa:madeBySensor [ a ns1:DifferentialGPS ;
            ns1:baseSensor "gps+38666" ;
            ns1:roverSensor "gps+37544" ] ;
    sosa:observedProperty <https://linked.data.gov.au/def/csdm/property/pose> ;
    sosa:resultTime "2023-05-22T16:41:00" .


```


### Observation Collection
Example Collection of Survey Observations
#### json
```json
{
  "@context": {
  },
  "id": "vectorObservations",
  "type": "FeatureCollection",
  "featureType": "sosa:ObservationCollection",
  "time": null,
  "properties": {
    "resultTime": "2023-05-24T00:00:00",
    "observedProperty": "surveyable:VectorDetermination",
    "usedProcedure": "surveyproc:traverse",
    "angleType": "angletype:bearing",
    "distanceType": "distancetype:ellipsoidal",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    }
  },
  "features": [
    {
      "type": "Feature",
      "geometry": null,
      "properties": {
        "hasFeatureOfInterest": "l973158",
        "hasResult": {
          "pose": {
            "angles": {
              "yaw": 231.38,
              "pitch": -0.001
            },
            "distance": 333207.1
          }
        }
      }
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld",
    {}
  ],
  "id": "vectorObservations",
  "type": "FeatureCollection",
  "featureType": "sosa:ObservationCollection",
  "time": null,
  "properties": {
    "resultTime": "2023-05-24T00:00:00",
    "observedProperty": "surveyable:VectorDetermination",
    "usedProcedure": "surveyproc:traverse",
    "angleType": "angletype:bearing",
    "distanceType": "distancetype:ellipsoidal",
    "madeBySensor": {
      "sensorType": "DifferentialGPS",
      "baseSensor": "gps+38666",
      "roverSensor": "gps+37544"
    }
  },
  "features": [
    {
      "type": "Feature",
      "geometry": null,
      "properties": {
        "hasFeatureOfInterest": "l973158",
        "hasResult": {
          "pose": {
            "angles": {
              "yaw": 231.38,
              "pitch": -0.001
            },
            "distance": 333207.1
          }
        }
      }
    }
  ]
}
```

#### ttl
```ttl
@prefix angletype: <https://linked.data.gov.au/def/csdm/defs/angletypes/> .
@prefix distancetype: <https://linked.data.gov.au/def/csdm/defs/distancetypes/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix geopose: <https://linked.data.gov.au/def/csdm/utils/geopose/> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix ns2: <https://linked.data.gov.au/def/csdm/surveyobs/> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix surveyable: <https://linked.data.gov.au/def/csdm/defs/surveyableproperties/> .
@prefix surveyproc: <https://linked.data.gov.au/def/csdm/defs/surveyprocedures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<http://www.example.com/features/vectorObservations> a sosa:ObservationCollection,
        geojson:FeatureCollection ;
    sosa:hasMember [ a geojson:Feature ;
            sosa:hasFeatureOfInterest <http://www.example.com/features/l973158> ;
            sosa:hasResult [ surv:pose [ surv:distance 3.332071e+05 ;
                            geopose:angles [ ] ] ] ] ;
    sosa:madeBySensor [ a ns1:DifferentialGPS ;
            ns1:baseSensor "gps+38666" ;
            ns1:roverSensor "gps+37544" ] ;
    sosa:observedProperty surveyable:VectorDetermination ;
    sosa:resultTime "2023-05-24T00:00:00" ;
    sosa:usedProcedure surveyproc:traverse ;
    ns2:angleType angletype:bearing ;
    ns2:distanceType distancetype:ellipsoidal .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Survey Vector Observation
$defs:
  coderef:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/iri-or-curie/schema.yaml
  SensorType:
    allOf:
    - properties:
        sensorType:
          $ref: '#/$defs/coderef'
          x-jsonld-id: '@type'
      required:
      - sensorType
    - oneOf:
      - properties:
          sensorType:
            const: DifferentialGPS
            x-jsonld-id: '@type'
          baseSensor:
            type: string
            x-jsonld-id: https://linked.data.gov.au/def/csdm/sensors/baseSensor
          roverSensor:
            type: string
            x-jsonld-id: https://linked.data.gov.au/def/csdm/sensors/roverSensor
        required:
        - baseSensor
        - roverSensor
      - properties:
          sensorType:
            not:
              const: DifferentialGPS
            x-jsonld-id: '@type'
  angles:
    type: object
    description: 'Basic-YPR: Basic GeoPose using yaw, pitch, and roll to specify orientation
      - only yaw is mandatory allowing basic 2D applications'
    properties:
      yaw:
        type: number
      pitch:
        type: number
      roll:
        type: number
    required:
    - yaw
  pose-lenient:
    description: 'Basic-YPR: Basic GeoPose using yaw, pitch, and roll to specify orientation'
    type: object
    properties:
      angles:
        $ref: '#/$defs/angles'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/utils/geopose/angles
    required:
    - angles
  SurveyVectorObsProps:
    allOf:
    - $ref: https://opengeospatial.github.io/ogcapi-sosa/build/annotated/sosa/properties/observation/schema.yaml
    - type: object
      properties:
        hasResultQuality:
          $ref: https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/quality/schema.yaml
        hasResult:
          properties:
            pose:
              $ref: '#/$defs/pose-lenient'
              x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/pose
            angle:
              type: number
            distance:
              type: number
              x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/distance
          anyOf:
          - required:
            - pose
          - required:
            - distance
          - required:
            - angle
          x-jsonld-id: sosa:hasResult
      required:
      - hasResult
  SurveyVectorObsFeature:
    allOf:
    - $ref: https://opengeospatial.github.io/ogcapi-sosa/build/annotated/sosa/features/observation/schema.yaml
    - properties:
        properties:
          $ref: '#/$defs/SurveyVectorObsProps'
  SurveyVectorObsCollection:
    allOf:
    - $ref: https://opengeospatial.github.io/ogcapi-sosa/build/annotated/sosa/properties/observationCollection/schema.yaml
    - properties:
        features:
          type: array
          items:
            $ref: '#/$defs/SurveyVectorObsFeature'
          x-jsonld-id: sosa:hasMember
          x-jsonld-container: '@set'
        properties:
          properties:
            angleType:
              $ref: '#/$defs/coderef'
              x-jsonld-type: '@id'
              x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/angleType
              x-jsonld-base: https://linked.data.gov.au/def/csdm/defs/angletypes/
            distanceType:
              $ref: '#/$defs/coderef'
              x-jsonld-type: '@id'
              x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyobs/distanceType
              x-jsonld-base: https://linked.data.gov.au/def/csdm/defs/distancetypes/
            madeBySensor:
              $ref: '#/$defs/SensorType'
              x-jsonld-id: sosa:madeBySensor
              x-jsonld-base: https://linked.data.gov.au/def/csdm/sensors/Sensor
            observedProperty:
              $ref: '#/$defs/coderef'
              x-jsonld-id: sosa:observedProperty
              x-jsonld-type: '@id'
              x-jsonld-base: https://linked.data.gov.au/def/csdm/property/
          required:
          - madeBySensor
          - observedProperty
          not:
            required:
            - hasResult
anyOf:
- $ref: '#/$defs/SurveyVectorObsFeature'
- $ref: '#/$defs/SurveyVectorObsCollection'
x-jsonld-extra-terms:
  hasResult:
    x-jsonld-id: sosa:hasResult
    x-jsonld-context:
      pose:
        '@id': https://linked.data.gov.au/def/csdm/surveyfeatures/pose
        '@context':
          position:
            '@id': https://linked.data.gov.au/def/csdm/utils/geopose/position
            '@context':
              lat: geo:lat
              lon: geo:long
              h: https://linked.data.gov.au/def/csdm/utils/geopose/h
          angles:
            '@id': https://linked.data.gov.au/def/csdm/utils/geopose/angles
            '@context':
              yaw: https://linked.data.gov.au/def/csdm/utils/geopose/yaw
              pitch: https://linked.data.gov.au/def/csdm/utils/geopose/pitch
              roll: https://linked.data.gov.au/def/csdm/utils/geopose/roll
      distance: https://linked.data.gov.au/def/csdm/surveyfeatures/distance
x-jsonld-prefixes:
  csdm: https://linked.data.gov.au/def/csdm/
  surv: https://linked.data.gov.au/def/csdm/surveyfeatures/
  geopose: https://linked.data.gov.au/def/csdm/utils/geopose/
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  dct: http://purl.org/dc/terms/
  angletype: https://linked.data.gov.au/def/csdm/defs/angletypes/
  distancetype: https://linked.data.gov.au/def/csdm/defs/distancetypes/
  surveyproc: https://linked.data.gov.au/def/csdm/defs/surveyprocedures/
  surveyable: https://linked.data.gov.au/def/csdm/defs/surveyableproperties/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "Feature": "geojson:Feature",
    "FeatureCollection": "geojson:FeatureCollection",
    "GeometryCollection": "geojson:GeometryCollection",
    "LineString": "geojson:LineString",
    "MultiLineString": "geojson:MultiLineString",
    "MultiPoint": "geojson:MultiPoint",
    "MultiPolygon": "geojson:MultiPolygon",
    "Point": "geojson:Point",
    "Polygon": "geojson:Polygon",
    "features": {
      "@container": "@set",
      "@id": "sosa:hasMember",
      "@type": "@id",
      "@context": {
        "observedProperty": {
          "@id": "sosa:observedProperty",
          "@type": "@id"
        },
        "madeBySensor": {
          "@id": "sosa:madeBySensor",
          "@type": "@id"
        }
      }
    },
    "type": "@type",
    "id": "@id",
    "properties": "@nest",
    "geometry": "geojson:geometry",
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "links": {
      "@context": {
        "href": {
          "@type": "@id",
          "@id": "oa:hasTarget"
        },
        "rel": {
          "@context": {
            "@base": "http://www.iana.org/assignments/relation/"
          },
          "@id": "http://www.iana.org/assignments/relation",
          "@type": "@id"
        },
        "type": "dct:type",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent"
      },
      "@id": "rdfs:seeAlso"
    },
    "featureType": "@type",
    "time": {
      "@context": {
        "date": {
          "@id": "owlTime:hasTime",
          "@type": "xsd:date"
        },
        "timestamp": {
          "@id": "owlTime:hasTime",
          "@type": "xsd:dateTime"
        },
        "interval": {
          "@id": "owlTime:hasTime",
          "@container": "@list"
        }
      },
      "@id": "dct:time"
    },
    "coordRefSys": "http://www.opengis.net/def/glossary/term/CoordinateReferenceSystemCRS",
    "place": "dct:spatial",
    "Polyhedron": "geojson:Polyhedron",
    "MultiPolyhedron": "geojson:MultiPolyhedron",
    "Prism": {
      "@id": "geojson:Prism",
      "@context": {
        "base": "geojson:prismBase",
        "lower": "geojson:prismLower",
        "upper": "geojson:prismUpper"
      }
    },
    "MultiPrism": {
      "@id": "geojson:MultiPrism",
      "@context": {
        "prisms": "geojson:prisms"
      }
    },
    "coordinates": {
      "@container": "@list",
      "@id": "geojson:coordinates"
    },
    "geometries": {
      "@id": "geojson:geometry",
      "@container": "@list"
    },
    "ActuatableProperty": {
      "@id": "sosa:ActuatableProperty",
      "@type": "@id"
    },
    "Actuation": {
      "@id": "sosa:Actuation",
      "@type": "@id"
    },
    "ActuationCollection": {
      "@id": "sosa:ActuationCollection",
      "@type": "@id"
    },
    "Actuator": {
      "@id": "sosa:Actuator",
      "@type": "@id"
    },
    "Deployment": {
      "@id": "sosa:Deployment",
      "@type": "@id"
    },
    "Execution": {
      "@id": "sosa:Execution",
      "@type": "@id"
    },
    "FeatureOfInterest": {
      "@id": "sosa:FeatureOfInterest",
      "@type": "@id"
    },
    "ObservableProperty": {
      "@id": "sosa:ObservableProperty",
      "@type": "@id"
    },
    "Observation": {
      "@id": "sosa:Observation",
      "@type": "@id"
    },
    "ObservationCollection": {
      "@id": "sosa:ObservationCollection",
      "@type": "@id"
    },
    "Platform": {
      "@id": "sosa:Platform",
      "@type": "@id"
    },
    "Property": {
      "@id": "sosa:Property",
      "@type": "@id"
    },
    "Procedure ": {
      "@id": "sosa:Procedure",
      "@type": "@id"
    },
    "Sample": {
      "@id": "sosa:Sample",
      "@type": "@id"
    },
    "SampleCollection": {
      "@id": "sosa:SampleCollection",
      "@type": "@id"
    },
    "Sampler": {
      "@id": "sosa:Sampler",
      "@type": "@id"
    },
    "Sampling": {
      "@id": "sosa:Sampling",
      "@type": "@id"
    },
    "Sensor": {
      "@id": "sosa:Sensor",
      "@type": "@id"
    },
    "Stimulus": {
      "@id": "sosa:Stimulus",
      "@type": "@id"
    },
    "System": {
      "@id": "sosa:System",
      "@type": "@id"
    },
    "actsOnProperty": {
      "@id": "sosa:actsOnProperty",
      "@type": "@id"
    },
    "deployedOnPlatform": {
      "@id": "sosa:deployedOnPlatform",
      "@type": "@id"
    },
    "deployedSystem": {
      "@id": "sosa:deployedSystem",
      "@type": "@id"
    },
    "detects": {
      "@id": "sosa:detects",
      "@type": "@id"
    },
    "forProperty": {
      "@id": "sosa:forProperty",
      "@type": "@id"
    },
    "hasDeployment": {
      "@id": "sosa:hasDeployment",
      "@type": "@id"
    },
    "hasInput": {
      "@id": "sosa:hasInput",
      "@type": "@id"
    },
    "hasMember": {
      "@id": "sosa:hasMember",
      "@type": "@id",
      "@context": {
        "hasResult": {
          "@id": "sosa:hasResult",
          "@type": "@id"
        },
        "observedProperty": {
          "@id": "sosa:observedProperty",
          "@type": "@id"
        },
        "madeBySensor": {
          "@id": "sosa:madeBySensor",
          "@type": "@id"
        }
      }
    },
    "hasOriginalSample": {
      "@id": "sosa:hasOriginalSample",
      "@type": "@id"
    },
    "hasOutput": {
      "@id": "sosa:hasOutput",
      "@type": "@id"
    },
    "hasProperty": {
      "@id": "sosa:hasProperty",
      "@type": "@id"
    },
    "hasResult": {
      "@id": "sosa:hasResult",
      "@type": "@id",
      "@context": {
        "pose": {
          "@context": {
            "angles": "csdm:utils/geopose/angles"
          },
          "@id": "csdm:surveyfeatures/pose"
        },
        "distance": "csdm:surveyfeatures/distance"
      }
    },
    "hasResultQuality": {
      "@id": "sosa:hasResultQuality",
      "@type": "@id",
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
        }
      }
    },
    "hasSample": {
      "@id": "sosa:hasSample",
      "@type": "@id"
    },
    "hasSampledFeature": {
      "@id": "sosa:hasSampledFeature",
      "@type": "@id"
    },
    "hasSimpleResult": {
      "@id": "sosa:hasSimpleResult",
      "@type": "@id"
    },
    "hasSubSystem": {
      "@id": "sosa:hasSubSystem",
      "@type": "@id",
      "@container": "@set"
    },
    "hasUltimateFeatureOfInterest": {
      "@id": "sosa:hasUltimateFeatureOfInterest",
      "@type": "@id"
    },
    "hosts": {
      "@id": "sosa:hosts",
      "@type": "@id",
      "@container": "@set"
    },
    "implementedBy": {
      "@id": "sosa:implementedBy",
      "@type": "@id"
    },
    "implements": {
      "@id": "sosa:implements",
      "@type": "@id"
    },
    "inDeployment": {
      "@id": "sosa:inDeployment",
      "@type": "@id"
    },
    "isActedOnBy": {
      "@id": "sosa:isActedOnBy",
      "@type": "@id"
    },
    "isFeatureOfInterestOf": {
      "@id": "sosa:isFeatureOfInterestOf",
      "@type": "@id"
    },
    "isHostedBy": {
      "@id": "sosa:isHostedBy",
      "@type": "@id"
    },
    "isObservedBy": {
      "@id": "sosa:isObservedBy",
      "@type": "@id"
    },
    "isPropertyOf": {
      "@id": "sosa:isPropertyOf",
      "@type": "@id"
    },
    "isProxyFor": {
      "@id": "sosa:isProxyFor",
      "@type": "@id"
    },
    "isResultOf": {
      "@id": "sosa:isResultOf",
      "@type": "@id"
    },
    "isResultOfMadeBySampler": {
      "@id": "sosa:isResultOfMadeBySampler",
      "@type": "@id"
    },
    "isResultOfUsedProcedure": {
      "@id": "sosa:isResultOfUsedProcedure",
      "@type": "@id"
    },
    "isSampleOf": {
      "@id": "sosa:isSampleOf",
      "@type": "@id"
    },
    "madeActuation": {
      "@id": "sosa:madeActuation",
      "@type": "@id"
    },
    "madeByActuator": {
      "@id": "sosa:madeByActuator",
      "@type": "@id"
    },
    "madeBySampler": {
      "@id": "sosa:madeBySampler",
      "@type": "@id"
    },
    "madeObservation": {
      "@id": "sosa:madeObservation",
      "@type": "@id"
    },
    "madeSampling": {
      "@id": "sosa:madeSampling",
      "@type": "@id"
    },
    "observes": {
      "@id": "sosa:observes",
      "@type": "@id"
    },
    "wasOriginatedBy": {
      "@id": "sosa:wasOriginatedBy",
      "@type": "@id"
    },
    "Accuracy": {
      "@id": "ssn-system:Accuracy",
      "@type": "@id"
    },
    "ActuationRange": {
      "@id": "ssn-system:ActuationRange",
      "@type": "@id"
    },
    "BatteryLifetime": {
      "@id": "ssn-system:BatteryLifetime",
      "@type": "@id"
    },
    "DetectionLimit": {
      "@id": "ssn-system:DetectionLimit",
      "@type": "@id"
    },
    "Drift": {
      "@id": "ssn-system:Drift",
      "@type": "@id"
    },
    "Frequency": {
      "@id": "ssn-system:Frequency",
      "@type": "@id"
    },
    "Latency": {
      "@id": "ssn-system:Latency",
      "@type": "@id"
    },
    "MaintenanceSchedule": {
      "@id": "ssn-system:MaintenanceSchedule",
      "@type": "@id"
    },
    "MeasurementRange": {
      "@id": "ssn-system:MeasurementRange",
      "@type": "@id"
    },
    "OperatingPowerRange": {
      "@id": "ssn-system:OperatingPowerRange",
      "@type": "@id"
    },
    "OperatingProperty": {
      "@id": "ssn-system:OperatingProperty",
      "@type": "@id"
    },
    "OperatingRange": {
      "@id": "ssn-system:OperatingRange",
      "@type": "@id"
    },
    "Precision": {
      "@id": "ssn-system:Precision",
      "@type": "@id"
    },
    "Resolution": {
      "@id": "ssn-system:Resolution",
      "@type": "@id"
    },
    "ResponseTime": {
      "@id": "ssn-system:ResponseTime",
      "@type": "@id"
    },
    "Selectivity": {
      "@id": "ssn-system:Selectivity",
      "@type": "@id"
    },
    "Sensitivity": {
      "@id": "ssn-system:Sensitivity",
      "@type": "@id"
    },
    "SurvivalProperty": {
      "@id": "ssn-system:SurvivalProperty",
      "@type": "@id"
    },
    "SystemLifetime": {
      "@id": "ssn-system:SystemLifetime",
      "@type": "@id"
    },
    "SurvivalRange": {
      "@id": "ssn-system:SurvivalRange",
      "@type": "@id"
    },
    "SystemCapability": {
      "@id": "ssn-system:SystemCapability",
      "@type": "@id"
    },
    "SystemProperty": {
      "@id": "ssn-system:SystemProperty",
      "@type": "@id"
    },
    "hasOperatingProperty": {
      "@id": "ssn-system:hasOperatingProperty",
      "@type": "@id"
    },
    "hasOperatingRange": {
      "@id": "ssn-system:hasOperatingRange",
      "@type": "@id"
    },
    "hasSurvivalProperty": {
      "@id": "ssn-system:hasSurvivalProperty",
      "@type": "@id"
    },
    "hasSystemCapability": {
      "@id": "ssn-system:hasSystemCapability",
      "@type": "@id"
    },
    "hasSystemProperty": {
      "@id": "ssn-system:hasSystemProperty",
      "@type": "@id"
    },
    "hasSurvivalRange": {
      "@id": "ssn-system:hasSurvivalRange",
      "@type": "@id"
    },
    "inCondition": {
      "@id": "ssn-system:inCondition",
      "@type": "@id"
    },
    "qualityOfObservation": {
      "@id": "ssn-system:qualityOfObservation",
      "@type": "@id"
    },
    "resultTime": "sosa:resultTime",
    "phenomenonTime": {
      "@id": "sosa:phenomenonTime",
      "@type": "@id"
    },
    "hasFeatureOfInterest": {
      "@id": "sosa:hasFeatureOfInterest",
      "@type": "@id"
    },
    "observedProperty": {
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/property/"
      },
      "@id": "sosa:observedProperty",
      "@type": "@id"
    },
    "usedProcedure": {
      "@id": "sosa:usedProcedure",
      "@type": "@id"
    },
    "madeBySensor": {
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/sensors/Sensor",
        "sensorType": "@type",
        "baseSensor": "csdm:sensors/baseSensor",
        "roverSensor": "csdm:sensors/roverSensor"
      },
      "@id": "sosa:madeBySensor",
      "@type": "@id"
    },
    "geojson": "https://purl.org/geojson/vocab#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
    "dct": "http://purl.org/dc/terms/",
    "owlTime": "http://www.w3.org/2006/time#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "sosa": "http://www.w3.org/ns/sosa/",
    "ssn-system": "ssn:systems/",
    "ssn": "http://www.w3.org/ns/ssn/",
    "csdm": "https://linked.data.gov.au/def/csdm/",
    "surv": "csdm:surveyfeatures/",
    "geopose": "csdm:utils/geopose/",
    "angletype": "csdm:defs/angletypes/",
    "distancetype": "csdm:defs/distancetypes/",
    "surveyproc": "csdm:defs/surveyprocedures/",
    "surveyable": "csdm:defs/surveyableproperties/",
    "angleType": {
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/defs/angletypes/"
      },
      "@type": "@id",
      "@id": "csdm:surveyobs/angleType"
    },
    "distanceType": {
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/defs/distancetypes/"
      },
      "@type": "@id",
      "@id": "csdm:surveyobs/distanceType"
    },
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/context.jsonld)

## Sources

* [3D Cadastre Survey Data Model](https://github.com/icsm-au/3d-csdm)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/features/SurveyObservations`

