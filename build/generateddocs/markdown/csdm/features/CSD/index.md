
# Cadastral Survey Dataset (Schema)

`icsm.csdm.features.CSD` *v0.1*

CSDM container for survey features and observations. This schema defines key metadata for a survey and uses the other components in this repository to implement details using standards based, flexible, extensible implementation patterns compatible with OGC API standards.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## Cadastral Survey Data Exchange 

A FG-JSON (and hence GeoJSON) compatible encoding of the 3D Cadastral Survey Data Model. 

This model comprises a series of modules based on standardised patterns, such as ISO 19109 General Feature Model, ISO 19156 Observations and Measurements, W3C Provenance Vocabulary.

![Design Approach](assets/design.png)

Each of these modules is described independently and is implemented as a complete building block either within the directory structure of this repository or connected (as a git submodule).

> This encoding uses the OGC "semantic uplift" aproach to bind simple, reusable JSON schema elements to the underlying data models using a JSON-LD context. Implementers do not need to understand this annotation mechanism, however it automatically provides for unambiguous semantics and documentation of data conformant to the encoding schema.

The structure of this is a container object with a set of metadata properties and collections of features and observations.  Observations are grouped as ObservationCollections to minimise duplication of information.

![Container View](assets/CSD_logical.png)
## Examples

### Example CSDM container
A minimal survey (CSDM container) with a few key objects populated - no occupations for example.

(Note different views available in panel to right)
#### json
```json
{
  "@context": {
    "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
    "eg1": "https://example.org/csd-example/",
    "registered-surveyors": "https://example.org/surveyors/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-survey-docroles": "https://linked.data.gov.au/def/csdm/nz-survey-docroles/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
    "nz-line-purpose": "https://linked.data.gov.au/def/csdm/nz-linepurpose/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/",
    "epsg": "http://www.opengis.net/def/crs/EPSG/0/",
    "activityType": {
      "@id": "@type",
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/nz-surveyactivities/"
      }
    },
    "agentType": {
      "@id": "@type",
      "@context": {
        "@base": "https://linked.data.gov.au/def/csdm/nz-surveyagents/"
      }
    }
  },
  "id": "DP_572532",
  "name": "DP 572532",
  "annotations": [
    {
      "href": "http://example.com/survey/documentregister/p333-frogsurvey.pdf",
      "rel": "related",
      "role": "nz-survey-docroles:fieldbook"
    }
  ],
  "description": "A survey used as a basic example with a few key elements. Note that descriptions typically should not replicate information held in other metadata fields unless there ia a requirement to provide a single description as text with such information.",
  "type": "FeatureCollection",
  "featureType": "CSD",
  "wasGeneratedBy": {
    "provType": "Activity",
    "id": "DP-1-S2",
    "endedAtTime": "2029-01-01T01:02:03Z",
    "wasAssociatedWith": "registered-surveyors:bc-3",
    "used": {
      "provType": "Entity",
      "id": "Act3",
      "wasAttributedTo": "icsm-jurisdictions:nz",
      "link": {
        "href": "https://some.gov/linktoact/",
        "rel": "related"
      }
    }
  },
  "purpose": "code:subdivision",
  "time": {
    "date": "2022-05-23"
  },
  "horizontalCRS": "epsg:4167",
  "bearingRotation": 0.0,
  "surveyType": "icsm-survey-type:Subdivision",
  "features": [],
  "referencedCSDs": [
    {
      "id": "DP_119552",
      "name": "DP 119552",
      "time": {
        "date": "2022-05-23"
      },
      "bearingRotation": 0.001
    }
  ],
  "points": [
    {
      "id": "points",
      "type": "FeatureCollection",
      "features": [
        {
          "id": "1725787",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 119552"
                },
                {
                  "type": "Stamp",
                  "label": "RM E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:boundary",
            "fromSurvey": "DP_119552",
            "comment": "ALP in channel of drive",
            "occupation": {
              "comment": "No occupation"
            },
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44396823",
          "type": "Feature",
          "featureType": "CadastralMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "time": null,
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 481392"
                },
                {
                  "type": "Stamp",
                  "label": "ALP I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:nonBoundary",
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745104",
          "type": "Feature",
          "featureType": "GeodeticReferenceMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.749997996,
              -36.930903937
            ]
          },
          "time": null,
          "properties": {
            "geodeticid": "XX FFF",
            "name": {
              "label": "RM C DP 119552 (EQ9W)",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "C"
                },
                {
                  "type": "geodeticStamp",
                  "label": "EQ9W"
                }
              ]
            },
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "purpose": "prm",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        }
      ]
    }
  ],
  "edges": [
    {
      "id": "ov",
      "type": "FeatureCollection",
      "featureType": "surv:ObservedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l973158",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "1725787",
              "11745104"
            ]
          },
          "properties": {
            "purpose": "nz-line-purpose:boundary"
          }
        }
      ]
    }
  ],
  "vectorObservations": [
    {
      "id": "obs",
      "type": "FeatureCollection",
      "featureType": "sosa:ObservationCollection",
      "time": null,
      "properties": {
        "resultTime": "2023-05-24T00:00:00Z",
        "observedProperty": "surveyable:VectorDetermination",
        "usedProcedure": "surveyproc:traverse",
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
          "time": null,
          "place": null,
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
  ]
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/CSD/context.jsonld",
    {
      "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
      "eg1": "https://example.org/csd-example/",
      "registered-surveyors": "https://example.org/surveyors/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-survey-docroles": "https://linked.data.gov.au/def/csdm/nz-survey-docroles/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
      "nz-line-purpose": "https://linked.data.gov.au/def/csdm/nz-linepurpose/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/",
      "epsg": "http://www.opengis.net/def/crs/EPSG/0/",
      "activityType": {
        "@id": "@type",
        "@context": {
          "@base": "https://linked.data.gov.au/def/csdm/nz-surveyactivities/"
        }
      },
      "agentType": {
        "@id": "@type",
        "@context": {
          "@base": "https://linked.data.gov.au/def/csdm/nz-surveyagents/"
        }
      }
    }
  ],
  "id": "DP_572532",
  "name": "DP 572532",
  "annotations": [
    {
      "href": "http://example.com/survey/documentregister/p333-frogsurvey.pdf",
      "rel": "related",
      "role": "nz-survey-docroles:fieldbook"
    }
  ],
  "description": "A survey used as a basic example with a few key elements. Note that descriptions typically should not replicate information held in other metadata fields unless there ia a requirement to provide a single description as text with such information.",
  "type": "FeatureCollection",
  "featureType": "CSD",
  "wasGeneratedBy": {
    "provType": "Activity",
    "id": "DP-1-S2",
    "endedAtTime": "2029-01-01T01:02:03Z",
    "wasAssociatedWith": "registered-surveyors:bc-3",
    "used": {
      "provType": "Entity",
      "id": "Act3",
      "wasAttributedTo": "icsm-jurisdictions:nz",
      "link": {
        "href": "https://some.gov/linktoact/",
        "rel": "related"
      }
    }
  },
  "purpose": "code:subdivision",
  "time": {
    "date": "2022-05-23"
  },
  "horizontalCRS": "epsg:4167",
  "bearingRotation": 0.0,
  "surveyType": "icsm-survey-type:Subdivision",
  "features": [],
  "referencedCSDs": [
    {
      "id": "DP_119552",
      "name": "DP 119552",
      "time": {
        "date": "2022-05-23"
      },
      "bearingRotation": 0.001
    }
  ],
  "points": [
    {
      "id": "points",
      "type": "FeatureCollection",
      "features": [
        {
          "id": "1725787",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 119552"
                },
                {
                  "type": "Stamp",
                  "label": "RM E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:boundary",
            "fromSurvey": "DP_119552",
            "comment": "ALP in channel of drive",
            "occupation": {
              "comment": "No occupation"
            },
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44396823",
          "type": "Feature",
          "featureType": "CadastralMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "time": null,
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 481392"
                },
                {
                  "type": "Stamp",
                  "label": "ALP I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:nonBoundary",
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745104",
          "type": "Feature",
          "featureType": "GeodeticReferenceMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.749997996,
              -36.930903937
            ]
          },
          "time": null,
          "properties": {
            "geodeticid": "XX FFF",
            "name": {
              "label": "RM C DP 119552 (EQ9W)",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "C"
                },
                {
                  "type": "geodeticStamp",
                  "label": "EQ9W"
                }
              ]
            },
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "purpose": "prm",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        }
      ]
    }
  ],
  "edges": [
    {
      "id": "ov",
      "type": "FeatureCollection",
      "featureType": "surv:ObservedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l973158",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "1725787",
              "11745104"
            ]
          },
          "properties": {
            "purpose": "nz-line-purpose:boundary"
          }
        }
      ]
    }
  ],
  "vectorObservations": [
    {
      "id": "obs",
      "type": "FeatureCollection",
      "featureType": "sosa:ObservationCollection",
      "time": null,
      "properties": {
        "resultTime": "2023-05-24T00:00:00Z",
        "observedProperty": "surveyable:VectorDetermination",
        "usedProcedure": "surveyproc:traverse",
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
          "time": null,
          "place": null,
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
  ]
}
```

#### ttl
```ttl
@prefix commonpatterns: <https://w3id.org/ogc/utils/label/> .
@prefix container: <https://linked.data.gov.au/def/csdm/container/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix epsg: <http://www.opengis.net/def/crs/EPSG/0/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix geopose: <https://linked.data.gov.au/def/csdm/utils/geopose/> .
@prefix icsm-survey-type: <https://linked.data.gov.au/def/csdm/icsm-survey-type/> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/commonpatterns/> .
@prefix ns2: <http://www.iana.org/assignments/> .
@prefix ns3: <https://linked.data.gov.au/def/csdm/sensors/> .
@prefix nz-line-purpose: <https://linked.data.gov.au/def/csdm/nz-linepurpose/> .
@prefix nz-monument-condition: <https://linked.data.gov.au/def/csdm/nz-monument-condition/> .
@prefix nz-monument-form: <https://linked.data.gov.au/def/csdm/nz-monument-form/> .
@prefix nz-monument-state: <https://linked.data.gov.au/def/csdm/nz-monument-state/> .
@prefix nz-survey-docroles: <https://linked.data.gov.au/def/csdm/nz-survey-docroles/> .
@prefix nz-surveypoint-purpose: <https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix prof: <http://www.w3.org/ns/dx/prof/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix surveyable: <https://linked.data.gov.au/def/csdm/observedProperties/> .
@prefix surveyproc: <https://linked.data.gov.au/def/csdm/observationProcedures/> .
@prefix time: <http://www.w3.org/2006/time#> .
@prefix topo: <https://purl.org/geojson/topo#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://linked.data.gov.au/def/csdm/csd-example/DP_572532> a geojson:FeatureCollection ;
    rdfs:label "DP 572532" ;
    dcterms:time [ time:hasTime "2022-05-23"^^xsd:date ] ;
    container:annotations [ ns2:relation <http://www.iana.org/assignments/relation/related> ;
            prof:hasRole nz-survey-docroles:fieldbook ;
            oa:hasTarget <http://example.com/survey/documentregister/p333-frogsurvey.pdf> ] ;
    container:bearingRotation 0e+00 ;
    container:horizontalCRS epsg:4167 ;
    container:points <https://linked.data.gov.au/def/csdm/csd-example/points> ;
    container:purpose <code:subdivision> ;
    container:referencedCSD <https://linked.data.gov.au/def/csdm/csd-example/DP_119552> ;
    container:surveyType icsm-survey-type:Subdivision ;
    container:vectorObservations <https://linked.data.gov.au/def/csdm/csd-example/obs> ;
    topo:edges <https://linked.data.gov.au/def/csdm/csd-example/ov> ;
    geojson:collectionFeatureType "CSD" .

<https://linked.data.gov.au/def/csdm/csd-example/44396823> a surv:CadastralMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "ALP I DP 481392" ;
            dcterms:hasPart [ rdfs:label "DP 481392" ;
                    commonpatterns:namePartType "Source" ],
                [ rdfs:label "ALP I" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    surv:monumentedBy [ surv:condition nz-monument-condition:markfound ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:nonBoundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747508e+02 -3.693141e+01 ) ] .

<https://linked.data.gov.au/def/csdm/csd-example/obs> a sosa:ObservationCollection,
        geojson:FeatureCollection ;
    sosa:hasMember [ a geojson:Feature ;
            sosa:hasFeatureOfInterest <https://linked.data.gov.au/def/csdm/csd-example/l973158> ;
            sosa:hasResult [ surv:pose [ surv:distance 3.332071e+05 ;
                            geopose:angles [ ] ] ] ] ;
    sosa:madeBySensor [ a ns3:DifferentialGPS ;
            ns3:baseSensor "gps+38666" ;
            ns3:roverSensor "gps+37544" ] ;
    sosa:observedProperty surveyable:VectorDetermination ;
    sosa:resultTime "2023-05-24T00:00:00Z" ;
    sosa:usedProcedure surveyproc:traverse .

<https://linked.data.gov.au/def/csdm/csd-example/ov> a geojson:FeatureCollection ;
    geojson:collectionFeatureType "surv:ObservedVector" ;
    geojson:features <https://linked.data.gov.au/def/csdm/csd-example/l973158> .

<https://linked.data.gov.au/def/csdm/csd-example/points> a geojson:FeatureCollection ;
    geojson:features <https://linked.data.gov.au/def/csdm/csd-example/11745104>,
        <https://linked.data.gov.au/def/csdm/csd-example/1725787>,
        <https://linked.data.gov.au/def/csdm/csd-example/44396823> .

<https://linked.data.gov.au/def/csdm/csd-example/11745104> a surv:GeodeticReferenceMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "RM C DP 119552 (EQ9W)" ;
            dcterms:hasPart [ rdfs:label "RM" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "119552" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "C" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "EQ9W" ;
                    commonpatterns:namePartType "geodeticStamp" ] ] ;
    surv:geodeticid "XX FFF" ;
    surv:monumentedBy [ surv:condition nz-monument-condition:markfound ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:original ] ;
    surv:purpose <https://linked.data.gov.au/def/csdm/csd-example/prm> ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.7475e+02 -3.69309e+01 ) ] .

<https://linked.data.gov.au/def/csdm/csd-example/1725787> a surv:BoundaryMark,
        geojson:Feature ;
    rdfs:comment "ALP in channel of drive" ;
    ns1:name [ rdfs:label "RM E DP 119552" ;
            dcterms:hasPart [ rdfs:label "RM E" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP 119552" ;
                    commonpatterns:namePartType "Source" ] ] ;
    surv:fromSurvey <https://linked.data.gov.au/def/csdm/csd-example/DP_119552> ;
    surv:monumentedBy [ surv:condition nz-monument-condition:markfound ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747502e+02 -3.693074e+01 ) ] .

<https://linked.data.gov.au/def/csdm/csd-example/DP_119552> rdfs:label "DP 119552" ;
    dcterms:time [ time:hasTime "2022-05-23"^^xsd:date ] ;
    container:bearingRotation 1e-03 .

<https://linked.data.gov.au/def/csdm/csd-example/l973158> a geojson:Feature ;
    container:purpose nz-line-purpose:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( <https://linked.data.gov.au/def/csdm/csd-example/1725787> <https://linked.data.gov.au/def/csdm/csd-example/11745104> ) ] .


```


### Extended Example CSDM container
This has a realistic set of features for a minimal survey (splitting a primary parcel, one secondary etc.)
#### json
```json
{
  "@context": {
    "@base": "http://csdm-example-surveys/DP-572532/",
    "eg2": "http://csdm-example-surveys/DP-572532/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
    "nz-line-purpose": "https://linked.data.gov.au/def/csdm/nz-linepurpose/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "registered-surveyors": "https://example.org/surveyors/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/",
    "epsg": "http://www.opengis.net/def/crs/EPSG/0/"
  },
  "id": "DP_572532",
  "name": "DP 572532",
  "type": "FeatureCollection",
  "wasGeneratedBy": {
    "id": "DP-1-S2",
    "endedAtTime": "2029-01-01T01:02:03Z"
  },
  "purpose": "code:subdivision",
  "time": {
    "date": "2022-05-22"
  },
  "horizontalCRS": "epsg:4167",
  "bearingRotation": 0.0,
  "surveyType": "icsm:Subdivision",
  "referencedCSDs": [
    {
      "id": "DP_119552",
      "name": "DP 119552",
      "time": {
        "date": "2022-02-11"
      },
      "bearingRotation": 0.0
    }
  ],
  "features": [],
  "parcels": [
    {
      "id": "primaryparcels",
      "type": "FeatureCollection",
      "featureType": "PrimaryParcel",
      "properties": null,
      "features": [
        {
          "type": "Feature",
          "id": "8446454",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l535242",
                "l535759",
                "l985190",
                "l952702",
                "l965727",
                "l589282"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Lot 1 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Lot"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "1"
                }
              ]
            },
            "area": 484,
            "parcelType": "nz-parcel-type:l",
            "parcelPurpose": "nz-parcel-purpose:fst",
            "parcelState": "nz-parcel-state:created",
            "class": "nz-parcel-class:allotment",
            "interests": [
              {
                "interestLink": "1040074",
                "interestType": "nz-interest-type:fh"
              }
            ]
          }
        },
        {
          "type": "Feature",
          "id": "8446455",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l746686",
                "l999724",
                "l591175",
                "l435861",
                "l874826",
                "l952702",
                "l985190",
                "l535759",
                "l535242",
                "l329256"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Lot 2 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Lot"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "2"
                }
              ]
            },
            "area": 1196,
            "parcelType": "nz-parcel-type:l",
            "parcelPurpose": "nz-parcel-purpose:fst",
            "parcelState": "nz-parcel-state:created",
            "class": "nz-parcel-class:allotment",
            "interests": [
              {
                "interestLink": "1040075",
                "interestType": "nz-interest-type:fh"
              }
            ]
          }
        }
      ]
    },
    {
      "id": "covenants",
      "type": "FeatureCollection",
      "featureType": "SecondaryParcel",
      "properties": null,
      "features": [
        {
          "type": "Feature",
          "id": "8446456",
          "featureType": "SecondaryParcel",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l999724",
                "l591175",
                "l369793",
                "l435861",
                "l345344",
                "l685716",
                "l832940",
                "l715872",
                "l641327",
                "l852048",
                "l949729",
                "l951515",
                "l761760",
                "l580762"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Area Z DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Area"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "Z"
                }
              ]
            },
            "area": 1196,
            "parcelType": "nz-parcel-type:covenant-land",
            "parcelPurpose": "nz-parcel-purpose:c-l",
            "parcelState": "nz-parcel-state:created",
            "interests": [
              {
                "interestLink": "1040075",
                "interestType": "nz-interest-type:fh"
              }
            ],
            "burdened": {
              "x-comment": "References the parcel ID of the burdened primary parcel.",
              "references": [
                "8446455"
              ]
            }
          }
        }
      ]
    }
  ],
  "points": [
    {
      "id": "BoundaryMarks",
      "type": "FeatureCollection",
      "featureType": "SurveyPoint",
      "features": [
        {
          "id": "1725787",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 119552"
                },
                {
                  "type": "Stamp",
                  "label": "RM E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:boundary",
            "fromSurvey": "DP_119552",
            "comment": "ALP in channel of drive",
            "occupation": {
              "comment": "No occupation"
            },
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44396823",
          "type": "Feature",
          "featureType": "CadastralMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "time": null,
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 481392"
                },
                {
                  "type": "Stamp",
                  "label": "ALP I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:nonBoundary",
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745160",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 6,
            "comment": null,
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44438418",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "481392"
                },
                {
                  "type": "MarkType",
                  "label": "ALP"
                },
                {
                  "type": "Stamp",
                  "label": "I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_481392",
            "ptQualityMeasure": 6,
            "comment": "ALP in channel of drive",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745104",
          "type": "Feature",
          "featureType": "GeodeticReferenceMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.749997996,
              -36.930903937
            ]
          },
          "properties": {
            "name": {
              "label": "RM C DP 119552 (EQ9W)",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "C"
                },
                {
                  "type": "geodeticStamp",
                  "label": "EQ9W"
                }
              ]
            },
            "geodeticid": "EQ9W",
            "purpose": "nz-surveypoint-purpose:prm",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 5,
            "comment": "Brass circular plaque flush in channel",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745161",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7503985651,
              -36.9303670583
            ]
          },
          "properties": {
            "name": {
              "label": "LP X DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "LP"
                },
                {
                  "type": "Stamp",
                  "label": "X"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 6,
            "comment": null,
            "monumentedBy": {
              "form": "nz-monument-form:plug",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "49655185",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.75043155,
              -36.9309699441
            ]
          },
          "properties": {
            "name": {
              "label": "AP 1 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "AP"
                },
                {
                  "type": "Stamp",
                  "label": "1"
                }
              ]
            },
            "purpose": "icsm:prm",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 6,
            "comment": "Flush in conc",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "44438410",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7505837059,
              -36.9311866966
            ]
          },
          "properties": {
            "name": {
              "label": "RM I DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:prm",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 6,
            "comment": "ORM in channel above catch pits",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "49655186",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7502384493,
              -36.9309318616
            ]
          },
          "properties": {
            "name": {
              "label": "RM H DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "H"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 6,
            "comment": "ORM in channel above catch pits",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "29960715",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750791041,
              -36.9312489607
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 6 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "6"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:searched-for-not-found",
              "state": "nz-monument-state:Adopted"
            }
          }
        },
        {
          "id": "29959289",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7505110058,
              -36.9310392342
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 3 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "3"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-found-replaced",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "29962820",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7512489947,
              -36.9308797133
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 4 DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "4"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "29963073",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7513031028,
              -36.9310543825
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 8 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "8"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "29963182",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.751324788,
              -36.9311247115
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 7 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "7"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "49655170",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509918818,
              -36.9312023381
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 14 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "14"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:mark-impractible",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655172",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7507606923,
              -36.9310291431
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 18 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "18"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655173",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7507225544,
              -36.9310215435
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 19 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "19"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655187",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509672626,
              -36.9311839118
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 38 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "38"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655174",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508909488,
              -36.9309571156
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 20 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "20"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655175",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510988383,
              -36.9311774613
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 21 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "21"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655176",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509396099,
              -36.9309904554
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 22 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "22"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655177",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509925285,
              -36.9309870924
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 23 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "23"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655178",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.751010805,
              -36.9310015962
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 24 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "24"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655179",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510101475,
              -36.9310253792
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 25 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "25"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655180",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750980056,
              -36.9310510313
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 26 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "26"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655181",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509573691,
              -36.9310656315
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 27 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "27"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655182",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509509094,
              -36.9310856987
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 28 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "28"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655183",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509568685,
              -36.9311076188
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 29 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "29"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655184",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510438631,
              -36.9311710421
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 30 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "30"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655171",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750540074,
              -36.9310610479
            ]
          },
          "properties": {
            "name": {
              "label": "DISK 15 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Disk"
                },
                {
                  "type": "Stamp",
                  "label": "15"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        }
      ]
    }
  ],
  "edges": [
    {
      "id": "observedVectors",
      "type": "FeatureCollection",
      "featureType": "ObservedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l566592",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "44438418"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l973158",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "1725787",
              "11745104"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l910380",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "11745161"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l472486",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "49655185"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l922788",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l773277",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "44438410"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l388393",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655172"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l941613",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655187"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l818068",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "calculation"
          }
        },
        {
          "type": "Feature",
          "id": "l599462",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655171"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l746686",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29959289",
              "49655174"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l999724",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655174",
              "29962820"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l591175",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29962820",
              "29963073"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l874826",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655175",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l369793",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29963073",
              "29963182"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l435861",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29963182",
              "49655175"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l965727",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655170",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l535242",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655171",
              "49655173"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l535759",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655173",
              "49655172"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l985190",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655172",
              "49655187"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l952702",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655187",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l580762",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655174",
              "49655176"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l761760",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655176",
              "49655177"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l951515",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655177",
              "49655178"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l949729",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655178",
              "49655179"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l852048",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655179",
              "49655180"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l641327",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655180",
              "49655181"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l715872",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655181",
              "49655182"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l832940",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655182",
              "49655183"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l685716",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655183",
              "49655184"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l345344",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655184",
              "49655175"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        }
      ]
    },
    {
      "id": "adoptedVectors",
      "type": "FeatureCollection",
      "featureType": "AdoptedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l636624",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745104",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l595769",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438410",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l520719",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438410",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l947230",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745104",
              "44438418"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l595769",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438418",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l622186",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438418",
              "29959289"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l329256",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29959289",
              "49655171"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l589282",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655171",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        }
      ]
    }
  ],
  "vectorObservations": [
    {
      "id": "vectorobservations-gps",
      "type": "FeatureCollection",
      "featureType": "sosa:ObservationCollection",
      "properties": {
        "usedProcedure": "surveyproc:differentialGPS",
        "resultTime": "2023-03-10T00:00:00+13:00",
        "observedProperty": "surveyable:VectorDetermination",
        "madeBySensor": {
          "sensorType": "icsm-equipment-type:gnss",
          "hasSubSystem": [
            {
              "sensorType": "icsm-equipment-type:gnss",
              "id": "s1",
              "role": "icsm-equipment-type:base"
            },
            {
              "sensorType": "icsm-equipment-type:gnss",
              "id": "s2",
              "role": "icsm-equipment-type:rover"
            }
          ]
        }
      },
      "features": [
        {
          "type": "Feature",
          "geometry": null,
          "properties": {
            "hasFeatureOfInterest": "l566592",
            "hasResult": {
              "distance": 95.06,
              "angle": 141.81944444444443
            },
            "distanceType": "distancetype:ellipsoidal",
            "distanceAccuracy": 0.001,
            "angleType": "angletype:bearing",
            "angleAccuracy": 0.0003928371
          }
        }
      ]
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/CSD/context.jsonld",
    {
      "@base": "http://csdm-example-surveys/DP-572532/",
      "eg2": "http://csdm-example-surveys/DP-572532/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
      "nz-line-purpose": "https://linked.data.gov.au/def/csdm/nz-linepurpose/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "registered-surveyors": "https://example.org/surveyors/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/",
      "epsg": "http://www.opengis.net/def/crs/EPSG/0/"
    }
  ],
  "id": "DP_572532",
  "name": "DP 572532",
  "type": "FeatureCollection",
  "wasGeneratedBy": {
    "id": "DP-1-S2",
    "endedAtTime": "2029-01-01T01:02:03Z"
  },
  "purpose": "code:subdivision",
  "time": {
    "date": "2022-05-22"
  },
  "horizontalCRS": "epsg:4167",
  "bearingRotation": 0.0,
  "surveyType": "icsm:Subdivision",
  "referencedCSDs": [
    {
      "id": "DP_119552",
      "name": "DP 119552",
      "time": {
        "date": "2022-02-11"
      },
      "bearingRotation": 0.0
    }
  ],
  "features": [],
  "parcels": [
    {
      "id": "primaryparcels",
      "type": "FeatureCollection",
      "featureType": "PrimaryParcel",
      "properties": null,
      "features": [
        {
          "type": "Feature",
          "id": "8446454",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l535242",
                "l535759",
                "l985190",
                "l952702",
                "l965727",
                "l589282"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Lot 1 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Lot"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "1"
                }
              ]
            },
            "area": 484,
            "parcelType": "nz-parcel-type:l",
            "parcelPurpose": "nz-parcel-purpose:fst",
            "parcelState": "nz-parcel-state:created",
            "class": "nz-parcel-class:allotment",
            "interests": [
              {
                "interestLink": "1040074",
                "interestType": "nz-interest-type:fh"
              }
            ]
          }
        },
        {
          "type": "Feature",
          "id": "8446455",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l746686",
                "l999724",
                "l591175",
                "l435861",
                "l874826",
                "l952702",
                "l985190",
                "l535759",
                "l535242",
                "l329256"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Lot 2 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Lot"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "2"
                }
              ]
            },
            "area": 1196,
            "parcelType": "nz-parcel-type:l",
            "parcelPurpose": "nz-parcel-purpose:fst",
            "parcelState": "nz-parcel-state:created",
            "class": "nz-parcel-class:allotment",
            "interests": [
              {
                "interestLink": "1040075",
                "interestType": "nz-interest-type:fh"
              }
            ]
          }
        }
      ]
    },
    {
      "id": "covenants",
      "type": "FeatureCollection",
      "featureType": "SecondaryParcel",
      "properties": null,
      "features": [
        {
          "type": "Feature",
          "id": "8446456",
          "featureType": "SecondaryParcel",
          "geometry": null,
          "topology": {
            "type": "Polygon",
            "references": [
              [
                "l999724",
                "l591175",
                "l369793",
                "l435861",
                "l345344",
                "l685716",
                "l832940",
                "l715872",
                "l641327",
                "l852048",
                "l949729",
                "l951515",
                "l761760",
                "l580762"
              ]
            ]
          },
          "properties": {
            "appellation": {
              "label": "Area Z DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "PlanIdentifier",
                  "label": "572532"
                },
                {
                  "type": "ParcelType",
                  "label": "Area"
                },
                {
                  "type": "ParcelIdentifier",
                  "label": "Z"
                }
              ]
            },
            "area": 1196,
            "parcelType": "nz-parcel-type:covenant-land",
            "parcelPurpose": "nz-parcel-purpose:c-l",
            "parcelState": "nz-parcel-state:created",
            "interests": [
              {
                "interestLink": "1040075",
                "interestType": "nz-interest-type:fh"
              }
            ],
            "burdened": {
              "x-comment": "References the parcel ID of the burdened primary parcel.",
              "references": [
                "8446455"
              ]
            }
          }
        }
      ]
    }
  ],
  "points": [
    {
      "id": "BoundaryMarks",
      "type": "FeatureCollection",
      "featureType": "SurveyPoint",
      "features": [
        {
          "id": "1725787",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 119552"
                },
                {
                  "type": "Stamp",
                  "label": "RM E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:boundary",
            "fromSurvey": "DP_119552",
            "comment": "ALP in channel of drive",
            "occupation": {
              "comment": "No occupation"
            },
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44396823",
          "type": "Feature",
          "featureType": "CadastralMark",
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "time": null,
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "Source",
                  "label": "DP 481392"
                },
                {
                  "type": "Stamp",
                  "label": "ALP I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:nonBoundary",
            "occupation": {
              "comment": "ALP in channel of drive"
            },
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:markfound",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745160",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7501603083,
              -36.9307359096
            ]
          },
          "properties": {
            "name": {
              "label": "RM E DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "E"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 6,
            "comment": null,
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "44438418",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508196767,
              -36.9314093194
            ]
          },
          "properties": {
            "name": {
              "label": "ALP I DP 481392",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "481392"
                },
                {
                  "type": "MarkType",
                  "label": "ALP"
                },
                {
                  "type": "Stamp",
                  "label": "I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_481392",
            "ptQualityMeasure": 6,
            "comment": "ALP in channel of drive",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745104",
          "type": "Feature",
          "featureType": "GeodeticReferenceMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.749997996,
              -36.930903937
            ]
          },
          "properties": {
            "name": {
              "label": "RM C DP 119552 (EQ9W)",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "C"
                },
                {
                  "type": "geodeticStamp",
                  "label": "EQ9W"
                }
              ]
            },
            "geodeticid": "EQ9W",
            "purpose": "nz-surveypoint-purpose:prm",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 5,
            "comment": "Brass circular plaque flush in channel",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "11745161",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7503985651,
              -36.9303670583
            ]
          },
          "properties": {
            "name": {
              "label": "LP X DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "LP"
                },
                {
                  "type": "Stamp",
                  "label": "X"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 6,
            "comment": null,
            "monumentedBy": {
              "form": "nz-monument-form:plug",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "49655185",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.75043155,
              -36.9309699441
            ]
          },
          "properties": {
            "name": {
              "label": "AP 1 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "AP"
                },
                {
                  "type": "Stamp",
                  "label": "1"
                }
              ]
            },
            "purpose": "icsm:prm",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 6,
            "comment": "Flush in conc",
            "monumentedBy": {
              "form": "nz-monument-form:pin",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "44438410",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7505837059,
              -36.9311866966
            ]
          },
          "properties": {
            "name": {
              "label": "RM I DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "I"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:prm",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 6,
            "comment": "ORM in channel above catch pits",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "49655186",
          "type": "Feature",
          "featureType": "CadastralMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7502384493,
              -36.9309318616
            ]
          },
          "properties": {
            "name": {
              "label": "RM H DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "RM"
                },
                {
                  "type": "Stamp",
                  "label": "H"
                }
              ]
            },
            "purpose": "nz-surveypoint-purpose:non-boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 6,
            "comment": "ORM in channel above catch pits",
            "monumentedBy": {
              "form": "nz-monument-form:plaque",
              "condition": "nz-monument-condition:mark-found",
              "state": "nz-monument-state:original"
            }
          }
        },
        {
          "id": "29960715",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750791041,
              -36.9312489607
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 6 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "6"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:searched-for-not-found",
              "state": "nz-monument-state:Adopted"
            }
          }
        },
        {
          "id": "29959289",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7505110058,
              -36.9310392342
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 3 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "3"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-found-replaced",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "29962820",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7512489947,
              -36.9308797133
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 4 DP 119552",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119552"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "4"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119552",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "29963073",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7513031028,
              -36.9310543825
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 8 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "8"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "29963182",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.751324788,
              -36.9311247115
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 7 DP 119553",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "119553"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "7"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_119553",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:adopted"
            }
          }
        },
        {
          "id": "49655170",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509918818,
              -36.9312023381
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 14 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "14"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:mark-impractible",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655172",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7507606923,
              -36.9310291431
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 18 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "18"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655173",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7507225544,
              -36.9310215435
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 19 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "19"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655187",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509672626,
              -36.9311839118
            ]
          },
          "properties": {
            "name": {
              "label": "Peg 38 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Peg"
                },
                {
                  "type": "Stamp",
                  "label": "38"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:Peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655174",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7508909488,
              -36.9309571156
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 20 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "20"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655175",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510988383,
              -36.9311774613
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 21 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "21"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655176",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509396099,
              -36.9309904554
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 22 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "22"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655177",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509925285,
              -36.9309870924
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 23 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "23"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655178",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.751010805,
              -36.9310015962
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 24 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "24"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655179",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510101475,
              -36.9310253792
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 25 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "25"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655180",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750980056,
              -36.9310510313
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 26 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "26"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655181",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509573691,
              -36.9310656315
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 27 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "27"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655182",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509509094,
              -36.9310856987
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 28 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "28"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655183",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7509568685,
              -36.9311076188
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 29 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "29"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655184",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.7510438631,
              -36.9311710421
            ]
          },
          "properties": {
            "name": {
              "label": "UNMK 30 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "UNMK"
                },
                {
                  "type": "Stamp",
                  "label": "30"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 8,
            "monumentedBy": {
              "form": "nz-monument-form:UNMK",
              "condition": "nz-monument-condition:not-specified",
              "state": "nz-monument-state:new"
            }
          }
        },
        {
          "id": "49655171",
          "type": "Feature",
          "featureType": "BoundaryMark",
          "time": null,
          "geometry": {
            "type": "Point",
            "coordinates": [
              174.750540074,
              -36.9310610479
            ]
          },
          "properties": {
            "name": {
              "label": "DISK 15 DP 572532",
              "hasPart": [
                {
                  "type": "PlanType",
                  "label": "DP"
                },
                {
                  "type": "Stamp",
                  "label": "572532"
                },
                {
                  "type": "MarkType",
                  "label": "Disk"
                },
                {
                  "type": "Stamp",
                  "label": "15"
                }
              ]
            },
            "purpose": "boundary",
            "fromSurvey": "DP_572532",
            "ptQualityMeasure": 7,
            "monumentedBy": {
              "form": "nz-monument-form:peg",
              "condition": "nz-monument-condition:reliably-placed",
              "state": "nz-monument-state:new"
            }
          }
        }
      ]
    }
  ],
  "edges": [
    {
      "id": "observedVectors",
      "type": "FeatureCollection",
      "featureType": "ObservedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l566592",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "44438418"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l973158",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "1725787",
              "11745104"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l910380",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "11745161"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l472486",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745160",
              "49655185"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l922788",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l773277",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "44438410"
            ]
          },
          "properties": {
            "purpose": "traverse"
          }
        },
        {
          "type": "Feature",
          "id": "l388393",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655172"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l941613",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655187"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l818068",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "calculation"
          }
        },
        {
          "type": "Feature",
          "id": "l599462",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655185",
              "49655171"
            ]
          },
          "properties": {
            "purpose": "radiation"
          }
        },
        {
          "type": "Feature",
          "id": "l746686",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29959289",
              "49655174"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l999724",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655174",
              "29962820"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l591175",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29962820",
              "29963073"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l874826",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655175",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l369793",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29963073",
              "29963182"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l435861",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29963182",
              "49655175"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l965727",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655170",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l535242",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655171",
              "49655173"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l535759",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655173",
              "49655172"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l985190",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655172",
              "49655187"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l952702",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655187",
              "49655170"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l580762",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655174",
              "49655176"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l761760",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655176",
              "49655177"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l951515",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655177",
              "49655178"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l949729",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655178",
              "49655179"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l852048",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655179",
              "49655180"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l641327",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655180",
              "49655181"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l715872",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655181",
              "49655182"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l832940",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655182",
              "49655183"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l685716",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655183",
              "49655184"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l345344",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655184",
              "49655175"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        }
      ]
    },
    {
      "id": "adoptedVectors",
      "type": "FeatureCollection",
      "featureType": "AdoptedVector",
      "features": [
        {
          "type": "Feature",
          "id": "l636624",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745104",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l595769",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438410",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l520719",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438410",
              "49655186"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l947230",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "11745104",
              "44438418"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l595769",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438418",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l622186",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "44438418",
              "29959289"
            ]
          },
          "properties": {
            "purpose": "adoption"
          }
        },
        {
          "type": "Feature",
          "id": "l329256",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "29959289",
              "49655171"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        },
        {
          "type": "Feature",
          "id": "l589282",
          "geometry": null,
          "topology": {
            "type": "Edge",
            "references": [
              "49655171",
              "29960715"
            ]
          },
          "properties": {
            "purpose": "boundary"
          }
        }
      ]
    }
  ],
  "vectorObservations": [
    {
      "id": "vectorobservations-gps",
      "type": "FeatureCollection",
      "featureType": "sosa:ObservationCollection",
      "properties": {
        "usedProcedure": "surveyproc:differentialGPS",
        "resultTime": "2023-03-10T00:00:00+13:00",
        "observedProperty": "surveyable:VectorDetermination",
        "madeBySensor": {
          "sensorType": "icsm-equipment-type:gnss",
          "hasSubSystem": [
            {
              "sensorType": "icsm-equipment-type:gnss",
              "id": "s1",
              "role": "icsm-equipment-type:base"
            },
            {
              "sensorType": "icsm-equipment-type:gnss",
              "id": "s2",
              "role": "icsm-equipment-type:rover"
            }
          ]
        }
      },
      "features": [
        {
          "type": "Feature",
          "geometry": null,
          "properties": {
            "hasFeatureOfInterest": "l566592",
            "hasResult": {
              "distance": 95.06,
              "angle": 141.81944444444443
            },
            "distanceType": "distancetype:ellipsoidal",
            "distanceAccuracy": 0.001,
            "angleType": "angletype:bearing",
            "angleAccuracy": 0.0003928371
          }
        }
      ]
    }
  ]
}
```

#### ttl
```ttl
@prefix angletype: <https://linked.data.gov.au/def/csdm/defs/angletypes/> .
@prefix commonpatterns: <https://w3id.org/ogc/utils/label/> .
@prefix container: <https://linked.data.gov.au/def/csdm/container/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix distancetype: <https://linked.data.gov.au/def/csdm/defs/distancetypes/> .
@prefix eg2: <http://csdm-example-surveys/DP-572532/> .
@prefix epsg: <http://www.opengis.net/def/crs/EPSG/0/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://linked.data.gov.au/def/csdm/commonpatterns/> .
@prefix ns2: <https://linked.data.gov.au/def/csdm/surveyobs/> .
@prefix nz-monument-condition: <https://linked.data.gov.au/def/csdm/nz-monument-condition/> .
@prefix nz-monument-form: <https://linked.data.gov.au/def/csdm/nz-monument-form/> .
@prefix nz-monument-state: <https://linked.data.gov.au/def/csdm/nz-monument-state/> .
@prefix nz-surveypoint-purpose: <https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/> .
@prefix parcel: <https://w3id.org/ogc/ladm/parcels/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix sosa: <http://www.w3.org/ns/sosa/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix surveyable: <https://linked.data.gov.au/def/csdm/observedProperties/> .
@prefix surveyproc: <https://linked.data.gov.au/def/csdm/observationProcedures/> .
@prefix time: <http://www.w3.org/2006/time#> .
@prefix topo: <https://purl.org/geojson/topo#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

eg2:44396823 a surv:CadastralMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "ALP I DP 481392" ;
            dcterms:hasPart [ rdfs:label "ALP I" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP 481392" ;
                    commonpatterns:namePartType "Source" ] ] ;
    surv:monumentedBy [ surv:condition nz-monument-condition:markfound ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:nonBoundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747508e+02 -3.693141e+01 ) ] .

eg2:8446454 a geojson:Feature ;
    geojson:topology [ a geojson:Polygon ;
            topo:relatedFeatures ( ( eg2:l535242 eg2:l535759 eg2:l985190 eg2:l952702 eg2:l965727 eg2:l589282 ) ) ] ;
    parcel:appellation [ rdfs:label "Lot 1 DP 572532" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "Lot" ;
                    commonpatterns:namePartType "ParcelType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "PlanIdentifier" ],
                [ rdfs:label "1" ;
                    commonpatterns:namePartType "ParcelIdentifier" ] ] ;
    parcel:interest [ parcel:interestLink eg2:1040074 ;
            parcel:interestType <nz-interest-type:fh> ] ;
    parcel:purpose <nz-parcel-purpose:fst> ;
    parcel:state <nz-parcel-state:created> ;
    parcel:surfaceArea 484 ;
    parcel:type <nz-parcel-type:l> .

eg2:8446455 a geojson:Feature ;
    geojson:topology [ a geojson:Polygon ;
            topo:relatedFeatures ( ( eg2:l746686 eg2:l999724 eg2:l591175 eg2:l435861 eg2:l874826 eg2:l952702 eg2:l985190 eg2:l535759 eg2:l535242 eg2:l329256 ) ) ] ;
    parcel:appellation [ rdfs:label "Lot 2 DP 572532" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "PlanIdentifier" ],
                [ rdfs:label "Lot" ;
                    commonpatterns:namePartType "ParcelType" ],
                [ rdfs:label "2" ;
                    commonpatterns:namePartType "ParcelIdentifier" ] ] ;
    parcel:interest [ parcel:interestLink eg2:1040075 ;
            parcel:interestType <nz-interest-type:fh> ] ;
    parcel:purpose <nz-parcel-purpose:fst> ;
    parcel:state <nz-parcel-state:created> ;
    parcel:surfaceArea 1196 ;
    parcel:type <nz-parcel-type:l> .

eg2:8446456 a geojson:Feature,
        parcel:SecondaryParcel ;
    geojson:topology [ a geojson:Polygon ;
            topo:relatedFeatures ( ( eg2:l999724 eg2:l591175 eg2:l369793 eg2:l435861 eg2:l345344 eg2:l685716 eg2:l832940 eg2:l715872 eg2:l641327 eg2:l852048 eg2:l949729 eg2:l951515 eg2:l761760 eg2:l580762 ) ) ] ;
    parcel:appellation [ rdfs:label "Area Z DP 572532" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "Area" ;
                    commonpatterns:namePartType "ParcelType" ],
                [ rdfs:label "Z" ;
                    commonpatterns:namePartType "ParcelIdentifier" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "PlanIdentifier" ] ] ;
    parcel:interest [ parcel:interestLink eg2:1040075 ;
            parcel:interestType <nz-interest-type:fh> ] ;
    parcel:purpose <nz-parcel-purpose:c-l> ;
    parcel:state <nz-parcel-state:created> ;
    parcel:surfaceArea 1196 ;
    parcel:type <nz-parcel-type:covenant-land> .

eg2:BoundaryMarks a geojson:FeatureCollection ;
    geojson:collectionFeatureType "SurveyPoint" ;
    geojson:features eg2:11745104,
        eg2:11745160,
        eg2:11745161,
        eg2:1725787,
        eg2:29959289,
        eg2:29960715,
        eg2:29962820,
        eg2:29963073,
        eg2:29963182,
        eg2:44396823,
        eg2:44438410,
        eg2:44438418,
        eg2:49655170,
        eg2:49655171,
        eg2:49655172,
        eg2:49655173,
        eg2:49655174,
        eg2:49655175,
        eg2:49655176,
        eg2:49655177,
        eg2:49655178,
        eg2:49655179,
        eg2:49655180,
        eg2:49655181,
        eg2:49655182,
        eg2:49655183,
        eg2:49655184,
        eg2:49655185,
        eg2:49655186,
        eg2:49655187 .

eg2:adoptedVectors a geojson:FeatureCollection ;
    geojson:collectionFeatureType "AdoptedVector" ;
    geojson:features eg2:l329256,
        eg2:l520719,
        eg2:l589282,
        eg2:l595769,
        eg2:l622186,
        eg2:l636624,
        eg2:l947230 .

eg2:covenants a geojson:FeatureCollection,
        parcel:SecondaryParcel ;
    geojson:features eg2:8446456 .

eg2:l388393 a geojson:Feature ;
    container:purpose eg2:radiation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:49655172 ) ] .

eg2:l472486 a geojson:Feature ;
    container:purpose eg2:traverse ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:11745160 eg2:49655185 ) ] .

eg2:l520719 a geojson:Feature ;
    container:purpose eg2:adoption ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:44438410 eg2:49655186 ) ] .

eg2:l595769 a geojson:Feature ;
    container:purpose eg2:adoption ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:44438410 eg2:29960715 ) ],
        [ a topo:Edge ;
            topo:relatedFeatures ( eg2:44438418 eg2:29960715 ) ] .

eg2:l599462 a geojson:Feature ;
    container:purpose eg2:radiation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:49655171 ) ] .

eg2:l622186 a geojson:Feature ;
    container:purpose eg2:adoption ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:44438418 eg2:29959289 ) ] .

eg2:l636624 a geojson:Feature ;
    container:purpose eg2:adoption ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:11745104 eg2:49655186 ) ] .

eg2:l773277 a geojson:Feature ;
    container:purpose eg2:traverse ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:44438410 ) ] .

eg2:l818068 a geojson:Feature ;
    container:purpose eg2:calculation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:49655170 ) ] .

eg2:l910380 a geojson:Feature ;
    container:purpose eg2:traverse ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:11745160 eg2:11745161 ) ] .

eg2:l922788 a geojson:Feature ;
    container:purpose eg2:radiation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:49655186 ) ] .

eg2:l941613 a geojson:Feature ;
    container:purpose eg2:radiation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655185 eg2:49655187 ) ] .

eg2:l947230 a geojson:Feature ;
    container:purpose eg2:adoption ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:11745104 eg2:44438418 ) ] .

eg2:l973158 a geojson:Feature ;
    container:purpose eg2:traverse ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:1725787 eg2:11745104 ) ] .

eg2:observedVectors a geojson:FeatureCollection ;
    geojson:collectionFeatureType "ObservedVector" ;
    geojson:features eg2:l345344,
        eg2:l369793,
        eg2:l388393,
        eg2:l435861,
        eg2:l472486,
        eg2:l535242,
        eg2:l535759,
        eg2:l566592,
        eg2:l580762,
        eg2:l591175,
        eg2:l599462,
        eg2:l641327,
        eg2:l685716,
        eg2:l715872,
        eg2:l746686,
        eg2:l761760,
        eg2:l773277,
        eg2:l818068,
        eg2:l832940,
        eg2:l852048,
        eg2:l874826,
        eg2:l910380,
        eg2:l922788,
        eg2:l941613,
        eg2:l949729,
        eg2:l951515,
        eg2:l952702,
        eg2:l965727,
        eg2:l973158,
        eg2:l985190,
        eg2:l999724 .

eg2:primaryparcels a geojson:FeatureCollection,
        parcel:PrimaryParcel ;
    geojson:features eg2:8446454,
        eg2:8446455 .

eg2:vectorobservations-gps a sosa:ObservationCollection,
        geojson:FeatureCollection ;
    sosa:hasMember [ a geojson:Feature ;
            sosa:hasFeatureOfInterest eg2:l566592 ;
            sosa:hasResult [ surv:distance 9.506e+01 ] ;
            ns2:angleType angletype:bearing ;
            ns2:distanceType distancetype:ellipsoidal ] ;
    sosa:madeBySensor [ a <icsm-equipment-type:gnss> ;
            sosa:hasSubSystem <https://linked.data.gov.au/def/csdm/sensors/s1>,
                <https://linked.data.gov.au/def/csdm/sensors/s2> ] ;
    sosa:observedProperty surveyable:VectorDetermination ;
    sosa:resultTime "2023-03-10T00:00:00+13:00" ;
    sosa:usedProcedure surveyproc:differentialGPS .

<https://linked.data.gov.au/def/csdm/sensors/s1> a <icsm-equipment-type:gnss> .

<https://linked.data.gov.au/def/csdm/sensors/s2> a <icsm-equipment-type:gnss> .

eg2:11745161 a surv:CadastralMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "LP X DP 119552" ;
            dcterms:hasPart [ rdfs:label "LP" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "119552" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "X" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_119552 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-found ;
            surv:form nz-monument-form:plug ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:non-boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747504e+02 -3.693037e+01 ) ] .

eg2:1725787 a surv:BoundaryMark,
        geojson:Feature ;
    rdfs:comment "ALP in channel of drive" ;
    ns1:name [ rdfs:label "RM E DP 119552" ;
            dcterms:hasPart [ rdfs:label "DP 119552" ;
                    commonpatterns:namePartType "Source" ],
                [ rdfs:label "RM E" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    surv:fromSurvey eg2:DP_119552 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:markfound ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747502e+02 -3.693074e+01 ) ] .

eg2:l329256 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:29959289 eg2:49655171 ) ] .

eg2:l345344 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655184 eg2:49655175 ) ] .

eg2:l369793 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:29963073 eg2:29963182 ) ] .

eg2:l566592 a geojson:Feature ;
    container:purpose eg2:radiation ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:11745160 eg2:44438418 ) ] .

eg2:l580762 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655174 eg2:49655176 ) ] .

eg2:l589282 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655171 eg2:29960715 ) ] .

eg2:l641327 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655180 eg2:49655181 ) ] .

eg2:l685716 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655183 eg2:49655184 ) ] .

eg2:l715872 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655181 eg2:49655182 ) ] .

eg2:l746686 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:29959289 eg2:49655174 ) ] .

eg2:l761760 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655176 eg2:49655177 ) ] .

eg2:l832940 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655182 eg2:49655183 ) ] .

eg2:l852048 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655179 eg2:49655180 ) ] .

eg2:l874826 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655175 eg2:49655170 ) ] .

eg2:l949729 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655178 eg2:49655179 ) ] .

eg2:l951515 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655177 eg2:49655178 ) ] .

eg2:l965727 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655170 eg2:29960715 ) ] .

eg2:29962820 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 4 DP 119552" ;
            dcterms:hasPart [ rdfs:label "119552" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "4" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_119552 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:adopted ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747512e+02 -3.693088e+01 ) ] .

eg2:29963073 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 8 DP 119553" ;
            dcterms:hasPart [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "8" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:adopted ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747513e+02 -3.693105e+01 ) ] .

eg2:29963182 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 7 DP 119553" ;
            dcterms:hasPart [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "7" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:adopted ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747513e+02 -3.693112e+01 ) ] .

eg2:49655173 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 19 DP 572532" ;
            dcterms:hasPart [ rdfs:label "19" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:Peg ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747507e+02 -3.693102e+01 ) ] .

eg2:49655176 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 22 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "22" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747509e+02 -3.693099e+01 ) ] .

eg2:49655177 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 23 DP 572532" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "23" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693099e+01 ) ] .

eg2:49655178 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 24 DP 572532" ;
            dcterms:hasPart [ rdfs:label "24" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.6931e+01 ) ] .

eg2:49655179 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 25 DP 572532" ;
            dcterms:hasPart [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "25" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693103e+01 ) ] .

eg2:49655180 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 26 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "26" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693105e+01 ) ] .

eg2:49655181 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 27 DP 572532" ;
            dcterms:hasPart [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "27" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693107e+01 ) ] .

eg2:49655182 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 28 DP 572532" ;
            dcterms:hasPart [ rdfs:label "28" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693109e+01 ) ] .

eg2:49655183 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 29 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "29" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693111e+01 ) ] .

eg2:49655184 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 30 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "30" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 8 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693117e+01 ) ] .

eg2:l435861 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:29963182 eg2:49655175 ) ] .

eg2:l535242 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655171 eg2:49655173 ) ] .

eg2:l535759 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655173 eg2:49655172 ) ] .

eg2:l591175 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:29962820 eg2:29963073 ) ] .

eg2:l952702 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655187 eg2:49655170 ) ] .

eg2:l985190 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655172 eg2:49655187 ) ] .

eg2:l999724 a geojson:Feature ;
    container:purpose eg2:boundary ;
    geojson:topology [ a topo:Edge ;
            topo:relatedFeatures ( eg2:49655174 eg2:29962820 ) ] .

eg2:11745104 a surv:GeodeticReferenceMark,
        geojson:Feature ;
    rdfs:comment "Brass circular plaque flush in channel" ;
    ns1:name [ rdfs:label "RM C DP 119552 (EQ9W)" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "119552" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "RM" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "EQ9W" ;
                    commonpatterns:namePartType "geodeticStamp" ],
                [ rdfs:label "C" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 5 ;
    surv:fromSurvey eg2:DP_119552 ;
    surv:geodeticid "EQ9W" ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:prm ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.7475e+02 -3.69309e+01 ) ] .

eg2:11745160 a surv:CadastralMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "RM E DP 119552" ;
            dcterms:hasPart [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "RM" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "E" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "119552" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_119552 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-found ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:non-boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747502e+02 -3.693074e+01 ) ] .

eg2:29959289 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 3 DP 119553" ;
            dcterms:hasPart [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "3" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-found-replaced ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747505e+02 -3.693104e+01 ) ] .

eg2:44438410 a surv:CadastralMark,
        geojson:Feature ;
    rdfs:comment "ORM in channel above catch pits" ;
    ns1:name [ rdfs:label "RM I DP 119553" ;
            dcterms:hasPart [ rdfs:label "RM" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "I" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-found ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:prm ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747506e+02 -3.693119e+01 ) ] .

eg2:49655172 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 18 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "18" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:Peg ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747508e+02 -3.693103e+01 ) ] .

eg2:49655174 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 20 DP 572532" ;
            dcterms:hasPart [ rdfs:label "20" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747509e+02 -3.693096e+01 ) ] .

eg2:49655175 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 21 DP 572532" ;
            dcterms:hasPart [ rdfs:label "21" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:not-specified ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747511e+02 -3.693118e+01 ) ] .

eg2:49655186 a surv:CadastralMark,
        geojson:Feature ;
    rdfs:comment "ORM in channel above catch pits" ;
    ns1:name [ rdfs:label "RM H DP 119553" ;
            dcterms:hasPart [ rdfs:label "H" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "RM" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-found ;
            surv:form nz-monument-form:plaque ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:non-boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747502e+02 -3.693093e+01 ) ] .

eg2:49655187 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 38 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "38" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:Peg ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.693118e+01 ) ] .

eg2:29960715 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "Peg 6 DP 119553" ;
            dcterms:hasPart [ rdfs:label "Peg" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "119553" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "6" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_119553 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:searched-for-not-found ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:Adopted ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747508e+02 -3.693125e+01 ) ] .

eg2:44438418 a surv:CadastralMark,
        geojson:Feature ;
    rdfs:comment "ALP in channel of drive" ;
    ns1:name [ rdfs:label "ALP I DP 481392" ;
            dcterms:hasPart [ rdfs:label "481392" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "ALP" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "I" ;
                    commonpatterns:namePartType "Stamp" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_481392 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-found ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:original ] ;
    surv:purpose nz-surveypoint-purpose:non-boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747508e+02 -3.693141e+01 ) ] .

eg2:49655170 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "UNMK 14 DP 572532" ;
            dcterms:hasPart [ rdfs:label "14" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "UNMK" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:mark-impractible ;
            surv:form nz-monument-form:UNMK ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.74751e+02 -3.69312e+01 ) ] .

eg2:49655171 a surv:BoundaryMark,
        geojson:Feature ;
    ns1:name [ rdfs:label "DISK 15 DP 572532" ;
            dcterms:hasPart [ rdfs:label "15" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "Disk" ;
                    commonpatterns:namePartType "MarkType" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ] ] ;
    ns1:qualityMeasure 7 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:peg ;
            surv:state nz-monument-state:new ] ;
    surv:purpose eg2:boundary ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747505e+02 -3.693106e+01 ) ] .

eg2:DP_119552 rdfs:label "DP 119552" ;
    dcterms:time [ time:hasTime "2022-02-11"^^xsd:date ] ;
    container:bearingRotation 0e+00 .

eg2:49655185 a surv:CadastralMark,
        geojson:Feature ;
    rdfs:comment "Flush in conc" ;
    ns1:name [ rdfs:label "AP 1 DP 572532" ;
            dcterms:hasPart [ rdfs:label "572532" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "DP" ;
                    commonpatterns:namePartType "PlanType" ],
                [ rdfs:label "1" ;
                    commonpatterns:namePartType "Stamp" ],
                [ rdfs:label "AP" ;
                    commonpatterns:namePartType "MarkType" ] ] ;
    ns1:qualityMeasure 6 ;
    surv:fromSurvey eg2:DP_572532 ;
    surv:monumentedBy [ surv:condition nz-monument-condition:reliably-placed ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:new ] ;
    surv:purpose <icsm:prm> ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.747504e+02 -3.693097e+01 ) ] .

eg2:DP_572532 a geojson:FeatureCollection ;
    rdfs:label "DP 572532" ;
    dcterms:time [ time:hasTime "2022-05-22"^^xsd:date ] ;
    container:bearingRotation 0e+00 ;
    container:horizontalCRS epsg:4167 ;
    container:parcels eg2:covenants,
        eg2:primaryparcels ;
    container:points eg2:BoundaryMarks ;
    container:purpose <code:subdivision> ;
    container:referencedCSD eg2:DP_119552 ;
    container:surveyType <icsm:Subdivision> ;
    container:vectorObservations eg2:vectorobservations-gps ;
    topo:edges eg2:adoptedVectors,
        eg2:observedVectors .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Cadastral Survey Data Model
$defs:
  coderef:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/iri-or-curie/schema.yaml
  coderefList:
    type: array
    items:
      $ref: '#/$defs/coderef'
  linkWithRole:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/link-role/schema.yaml
  dateTime:
    type: string
    format: date-time
    pattern: ^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})?$
  AnnotationSet:
    type: array
    items:
      anyOf:
      - $ref: '#/$defs/linkWithRole'
      - properties:
          description:
            type: string
          role:
            $ref: '#/$defs/coderef'
        required:
        - description
  FeatureCollectionOptions:
    anyOf:
    - $ref: https://beta.schemas.opengis.net/json-fg/featurecollection.json
    - $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/feature-lenient/schema.yaml
    - $ref: https://geojson.org/schema/FeatureCollection.json
    - $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-feature-collection/schema.yaml
  TopoFeatureCollection:
    $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-feature-collection/schema.yaml
  SOSAObsCollection:
    $ref: https://opengeospatial.github.io/ogcapi-sosa/build/annotated/sosa/properties/observationCollection/schema.yaml
  TopoLine:
    allOf:
    - $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-line/schema.yaml
  TopoArc:
    $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-arc/schema.yaml
  SubtendedAngleVector:
    allOf:
    - $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-feature/schema.yaml
    - properties:
        topology:
          allOf:
          - $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/datatypes/topology/schema.yaml
          - properties:
              type:
                type: string
                const: SubtendedAngle
              references:
                minItems: 3
                maxItems: 3
      required:
      - topology
  TopoVector:
    anyOf:
    - $ref: '#/$defs/TopoLine'
    - $ref: '#/$defs/TopoArc'
    - $ref: '#/$defs/SubtendedAngleVector'
  CSDmeta:
    type: object
    properties:
      name:
        type: string
        x-jsonld-id: rdfs:label
      bearingRotation:
        type: number
        x-jsonld-id: https://linked.data.gov.au/def/csdm/container/bearingRotation
      annotations:
        $ref: '#/$defs/AnnotationSet'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/container/annotations
    required:
    - name
    - bearingRotation
  provenanceOptions:
    anyOf:
    - properties:
        has_provenance:
          anyOf:
          - $ref: https://ogcincubator.github.io/bblock-prov-schema/build/annotated/ogc-utils/prov/schema.yaml#/$defs/Prov
          - type: 'null'
      required:
      - has_provenance
    - properties:
        wasGeneratedBy:
          $ref: https://ogcincubator.github.io/bblock-prov-schema/build/annotated/ogc-utils/prov/schema.yaml#/$defs/Activity
      required:
      - wasGeneratedBy
  SurveyPointCollection:
    allOf:
    - $ref: '#/$defs/FeatureCollectionOptions'
    - properties:
        features:
          type: array
          items:
            allOf:
            - $ref: https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/schema.yaml
            - properties:
                featureType:
                  enum:
                  - SurveyMark
                  - CadastralMark
                  - GeodeticReferenceMark
                  - BoundaryMark
                  - SurveyPoint
                  - OccupationMark
                  x-jsonld-id: '@type'
  VectorFeatures:
    properties:
      features:
        items:
          $ref: '#/$defs/TopoVector'
allOf:
- $ref: '#/$defs/FeatureCollectionOptions'
- properties:
    time:
      $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/time/schema.yaml
- $ref: '#/$defs/CSDmeta'
- $ref: '#/$defs/provenanceOptions'
properties:
  horizontalCRS:
    $ref: '#/$defs/coderef'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/horizontalCRS
    x-jsonld-type: '@id'
  compoundCRS:
    $ref: '#/$defs/coderef'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/compoundCRS
    x-jsonld-type: '@id'
  verticalDatum:
    $ref: '#/$defs/coderef'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/verticalDatum
    x-jsonld-type: '@id'
  surveyDescription:
    type: string
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/surveyDescription
  surveyDescriptors:
    $ref: https://ogcincubator.github.io/bblocks-utility/build/annotated/bbr/utils/compoundName/schema.yaml
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/surveyDescriptors
  purpose:
    oneOf:
    - $ref: '#/$defs/coderef'
    - type: array
      items:
        $ref: '#/$defs/coderef'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/purpose
    x-jsonld-type: '@id'
  surveyType:
    $ref: '#/$defs/coderef'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/surveyType
    x-jsonld-type: '@id'
  referencedCSDs:
    type: array
    items:
      type: object
      allOf:
      - $ref: '#/$defs/CSDmeta'
      - properties:
          id:
            $ref: '#/$defs/coderef'
        required:
        - id
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/referencedCSD
  adminUnit:
    anyOf:
    - $ref: '#/$defs/coderef'
    - $ref: '#/$defs/linkWithRole'
    - type: array
      items:
        $ref: '#/$defs/coderef'
    - type: array
      items:
        $ref: '#/$defs/linkWithRole'
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/adminUnit
    x-jsonld-container: '@set'
  supportingDocuments:
    anyOf:
    - $ref: '#/$defs/coderef'
    - $ref: '#/$defs/linkWithRole'
    - type: array
      items:
        $ref: '#/$defs/coderef'
    - type: array
      items:
        $ref: '#/$defs/linkWithRole'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/supportingDocuments
    x-jsonld-container: '@set'
  points:
    type: array
    items:
      $ref: '#/$defs/SurveyPointCollection'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/points
  observedVectors:
    type: array
    items:
      allOf:
      - $ref: '#/$defs/TopoFeatureCollection'
      - $ref: '#/$defs/VectorFeatures'
      - anyOf:
        - properties:
            featureType:
              enum:
              - ObservedVector
              - surv:ObservedVector
              x-jsonld-id: '@type'
          required:
          - featureType
        - properties:
            features:
              items:
                properties:
                  featureType:
                    enum:
                    - ObservedVector
                    - surv:ObservedVector
                    - SubtendedAngle
                    - surv:SubtendedAngle
                required:
                - featureType
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/observedVectors
  adoptedVectors:
    type: array
    items:
      allOf:
      - $ref: '#/$defs/TopoFeatureCollection'
      - anyOf:
        - properties:
            featureType:
              enum:
              - AdoptedVector
              - surv:AdoptedVector
              x-jsonld-id: '@type'
          required:
          - featureType
        - properties:
            features:
              items:
                properties:
                  featureType:
                    enum:
                    - AdoptedVector
                    - surv:AdoptedVector
                required:
                - featureType
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/adoptedVectors
  parcels:
    type: array
    items:
      allOf:
      - $ref: https://ogcincubator.github.io/bblocks-land-parcels/build/annotated/ladm/land-parcels/parcelCollection/schema.yaml
      - properties:
          featureType:
            enum:
            - PrimaryParcel
            - surv:PrimaryParcel
            - SecondaryParcel
            - surv:SecondaryParcel
            x-jsonld-id: '@type'
        required:
        - featureType
      - oneOf:
        - properties:
            featureType:
              enum:
              - PrimaryParcel
              - surv:PrimaryParcel
              x-jsonld-id: '@type'
          required:
          - featureType
        - properties:
            featureType:
              enum:
              - SecondaryParcel
              - surv:SecondaryParcel
              x-jsonld-id: '@type'
            features:
              type: array
              items:
                properties:
                  properties:
                    required:
                    - interests
                    x-jsonld-id: '@nest'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/parcels
  vectorObservations:
    type: array
    items:
      $ref: https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/schema.yaml#/$defs/SurveyVectorObsCollection
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/vectorObservations
  adoptedObservations:
    type: array
    items:
      $ref: https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyObservations/schema.yaml#/$defs/SurveyVectorObsCollection
  occupationObservations:
    type: array
    items:
      $ref: '#/$defs/SOSAObsCollection'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/occupationObservations
  occupationFeatures:
    type: array
    items:
      $ref: '#/$defs/FeatureCollectionOptions'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/container/occupationFeatures
required:
- surveyType
- time
- purpose
oneOf:
- required:
  - horizontalCRS
- required:
  - compoundCRS
x-jsonld-extra-terms:
  CSD: https://linked.data.gov.au/def/csdm/container/CSD
  address: https://schema.org/address
  locality: https://linked.data.gov.au/def/csdm/csd/locality
  edges: topo:edges
  PrimaryParcel:
    x-jsonld-id: parcel:PrimaryParcel
    x-jsonld-type: '@id'
  SecondaryParcel:
    x-jsonld-id: parcel:SecondaryParcel
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  container: https://linked.data.gov.au/def/csdm/container/
  sdo: https://schema.org/
  csd: https://linked.data.gov.au/def/csdm/csd/
  surv: https://linked.data.gov.au/def/csdm/surveyfeatures/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/CSD/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/CSD/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "type": "@type",
    "featureType": "geojson:collectionFeatureType",
    "coordRefSys": "http://www.opengis.net/def/glossary/term/CoordinateReferenceSystemCRS",
    "features": {
      "@context": {
        "featureType": "@type",
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
        "topology": {
          "@context": {
            "references": {
              "@id": "topo:relatedFeatures",
              "@type": "@id",
              "@container": "@list"
            },
            "directed_references": {
              "@context": {
                "ref": {
                  "@type": "@id",
                  "@id": "topo:ref"
                }
              },
              "@id": "topo:directedReferences",
              "@container": "@list"
            },
            "relationships": {
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
                "length": "dct:extent",
                "role": {
                  "@id": "prof:hasRole",
                  "@type": "@id"
                },
                "conformsTo": {
                  "@id": "dct:conformsTo",
                  "@type": "@id"
                }
              },
              "@id": "topo:relatedFeatures",
              "@type": "@id",
              "@container": "@list"
            }
          },
          "@type": "@id",
          "@id": "geojson:topology"
        }
      },
      "@id": "geojson:features",
      "@container": "@set"
    },
    "Feature": "geojson:Feature",
    "FeatureCollection": "geojson:FeatureCollection",
    "GeometryCollection": "geojson:GeometryCollection",
    "LineString": "geojson:LineString",
    "MultiLineString": "geojson:MultiLineString",
    "MultiPoint": "geojson:MultiPoint",
    "MultiPolygon": "geojson:MultiPolygon",
    "Point": "geojson:Point",
    "Polygon": "geojson:Polygon",
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
    "time": "dct:time",
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
    },
    "name": "rdfs:label",
    "bearingRotation": "container:bearingRotation",
    "annotations": {
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
        "length": "dct:extent",
        "role": {
          "@id": "prof:hasRole",
          "@type": "@id"
        },
        "conformsTo": {
          "@id": "dct:conformsTo",
          "@type": "@id"
        }
      },
      "@id": "container:annotations"
    },
    "CSD": "container:CSD",
    "address": "sdo:address",
    "locality": "csd:locality",
    "edges": "topo:edges",
    "PrimaryParcel": {
      "@id": "parcel:PrimaryParcel",
      "@type": "@id"
    },
    "SecondaryParcel": {
      "@id": "parcel:SecondaryParcel",
      "@type": "@id"
    },
    "horizontalCRS": {
      "@id": "container:horizontalCRS",
      "@type": "@id"
    },
    "compoundCRS": {
      "@id": "container:compoundCRS",
      "@type": "@id"
    },
    "verticalDatum": {
      "@id": "container:verticalDatum",
      "@type": "@id"
    },
    "surveyDescription": "container:surveyDescription",
    "surveyDescriptors": {
      "@context": {
        "name": "commonpatterns:name",
        "hasPart": {
          "@context": {
            "ref": "commonpatterns:namePartRef",
            "type": "commonpatterns:namePartType"
          },
          "@id": "dct:hasPart"
        }
      },
      "@id": "container:surveyDescriptors"
    },
    "purpose": {
      "@id": "container:purpose",
      "@type": "@id"
    },
    "surveyType": {
      "@id": "container:surveyType",
      "@type": "@id"
    },
    "referencedCSDs": "container:referencedCSD",
    "adminUnit": {
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
        "length": "dct:extent",
        "role": {
          "@id": "prof:hasRole",
          "@type": "@id"
        },
        "conformsTo": {
          "@id": "dct:conformsTo",
          "@type": "@id"
        }
      },
      "@type": "@id",
      "@id": "container:adminUnit",
      "@container": "@set"
    },
    "supportingDocuments": {
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
        "length": "dct:extent",
        "role": {
          "@id": "prof:hasRole",
          "@type": "@id"
        },
        "conformsTo": {
          "@id": "dct:conformsTo",
          "@type": "@id"
        }
      },
      "@id": "container:supportingDocuments",
      "@container": "@set"
    },
    "points": {
      "@context": {
        "features": {
          "@context": {
            "featureType": "@type",
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
            "topology": {
              "@context": {
                "references": {
                  "@id": "topo:relatedFeatures",
                  "@type": "@id",
                  "@container": "@list"
                },
                "directed_references": {
                  "@context": {
                    "ref": {
                      "@type": "@id",
                      "@id": "topo:ref"
                    }
                  },
                  "@id": "topo:directedReferences",
                  "@container": "@list"
                },
                "relationships": {
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
                    "length": "dct:extent",
                    "role": {
                      "@id": "prof:hasRole",
                      "@type": "@id"
                    },
                    "conformsTo": {
                      "@id": "dct:conformsTo",
                      "@type": "@id"
                    }
                  },
                  "@id": "topo:relatedFeatures",
                  "@type": "@id",
                  "@container": "@list"
                }
              },
              "@type": "@id",
              "@id": "geojson:topology"
            },
            "condition": {
              "@type": "@id",
              "@id": "surv:condition"
            },
            "form": {
              "@type": "@id",
              "@id": "surv:form"
            },
            "replaces": {
              "@type": "@id",
              "@id": "surv:replaces"
            },
            "state": {
              "@type": "@id",
              "@id": "surv:state"
            },
            "purpose": {
              "@type": "@id",
              "@id": "surv:purpose"
            },
            "geodeticid": {
              "@id": "surv:geodeticid",
              "@context": {
                "name": "commonpatterns:name",
                "hasPart": {
                  "@context": {
                    "ref": "commonpatterns:namePartRef",
                    "type": "commonpatterns:namePartType"
                  },
                  "@id": "dct:hasPart"
                }
              }
            },
            "name": {
              "@id": "csdm:commonpatterns/name",
              "@type": "@id",
              "@context": {
                "name": "commonpatterns:name",
                "hasPart": {
                  "@context": {
                    "ref": "commonpatterns:namePartRef",
                    "type": "commonpatterns:namePartType"
                  },
                  "@id": "dct:hasPart"
                }
              }
            }
          },
          "@id": "geojson:features",
          "@container": "@set"
        }
      },
      "@id": "container:points"
    },
    "observedVectors": {
      "@context": {
        "featureType": "@type"
      },
      "@id": "container:observedVectors"
    },
    "adoptedVectors": {
      "@context": {
        "featureType": "@type"
      },
      "@id": "container:adoptedVectors"
    },
    "parcels": {
      "@context": {
        "features": {
          "@context": {
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
            "topology": {
              "@context": {
                "references": {
                  "@id": "topo:relatedFeatures",
                  "@type": "@id",
                  "@container": "@list"
                },
                "directed_references": {
                  "@context": {
                    "ref": {
                      "@type": "@id",
                      "@id": "topo:ref"
                    }
                  },
                  "@id": "topo:directedReferences",
                  "@container": "@list"
                },
                "relationships": {
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
                    "length": "dct:extent",
                    "role": {
                      "@id": "prof:hasRole",
                      "@type": "@id"
                    },
                    "conformsTo": {
                      "@id": "dct:conformsTo",
                      "@type": "@id"
                    }
                  },
                  "@id": "topo:relatedFeatures",
                  "@type": "@id",
                  "@container": "@list"
                }
              },
              "@type": "@id",
              "@id": "geojson:topology"
            },
            "points": {
              "@id": "topo:points",
              "@container": "@list"
            },
            "edges": {
              "@id": "topo:edges",
              "@container": "@list"
            },
            "solids": {
              "@id": "topo:solids",
              "@container": "@list"
            },
            "bearingRotation": "parcel:bearingRotation",
            "parcels": "parcel:parcels",
            "PrimaryParcel": {
              "@id": "parcel:PrimaryParcel",
              "@type": "@id"
            },
            "SecondaryParcel": {
              "@id": "parcel:SecondaryParcel",
              "@type": "@id"
            },
            "appellation": {
              "@context": {
                "name": "commonpatterns:name",
                "hasPart": {
                  "@context": {
                    "ref": "commonpatterns:namePartRef",
                    "type": "commonpatterns:namePartType"
                  },
                  "@id": "dct:hasPart"
                }
              },
              "@id": "parcel:appellation"
            },
            "parcelType": {
              "@id": "parcel:type",
              "@type": "@id"
            },
            "parcelState": {
              "@id": "parcel:state",
              "@type": "@id"
            },
            "parcelPurpose": {
              "@id": "parcel:purpose",
              "@type": "@id"
            },
            "area": "parcel:surfaceArea",
            "floor": "parcel:floor",
            "zmin": "parcel:zmin",
            "zmax": "parcel:zmax",
            "interests": {
              "@context": {
                "interestLink": {
                  "@type": "@id",
                  "@id": "parcel:interestLink"
                },
                "interestName": "parcel:interestName",
                "interestType": {
                  "@type": "@id",
                  "@id": "parcel:interestType"
                },
                "dateInForce": "parcel:interestDateInForce",
                "dateExpires": "parcel:interestDateExpires",
                "statuteLink": {
                  "@type": "@id",
                  "@id": "parcel:statuteLink"
                },
                "statuteName": "parcel:statuteName",
                "benefitedPartyName": "parcel:benefitedPartyName",
                "benefitedPartyLink": {
                  "@type": "@id",
                  "@id": "parcel:benefitedPartyLink"
                },
                "originalSurveyLink": {
                  "@type": "@id",
                  "@id": "parcel:originalSurveyLink"
                },
                "referencedParcel": {
                  "@type": "@id",
                  "@id": "parcel:referencedParcel"
                },
                "burdenedParcels": {
                  "@id": "parcel:burdened",
                  "@container": "@set"
                },
                "benefitedParcels": {
                  "@id": "parcel:benefited",
                  "@container": "@set"
                },
                "description": "parcel:interestDescription",
                "entitlementPortion": "parcel:entitlementPortion",
                "liabilityPortion": "parcel:liabilityPortion"
              },
              "@id": "parcel:interest",
              "@container": "@set"
            }
          },
          "@id": "geojson:features",
          "@container": "@set"
        },
        "featureType": "@type"
      },
      "@id": "container:parcels"
    },
    "vectorObservations": {
      "@context": {
        "observedProperty": {
          "@context": {
            "@base": "https://linked.data.gov.au/def/csdm/property/"
          },
          "@id": "sosa:observedProperty",
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
        "hasMember": {
          "@context": {
            "features": {
              "@id": "sosa:hasMember",
              "@type": "@id"
            }
          },
          "@id": "sosa:hasMember",
          "@type": "@id"
        },
        "featureType": "@type",
        "features": {
          "@id": "sosa:hasMember",
          "@type": "@id",
          "@container": "@set",
          "@context": {
            "features": {
              "@container": "@set",
              "@id": "sosa:hasMember",
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
                  "@id": "surv:pose"
                },
                "distance": "surv:distance"
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
            }
          }
        },
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
        }
      },
      "@id": "container:vectorObservations"
    },
    "occupationObservations": {
      "@context": {
        "hasMember": {
          "@context": {
            "features": {
              "@id": "sosa:hasMember",
              "@type": "@id"
            }
          },
          "@id": "sosa:hasMember",
          "@type": "@id"
        },
        "featureType": "@type",
        "features": {
          "@id": "sosa:hasMember",
          "@type": "@id",
          "@container": "@set",
          "@context": {
            "features": {
              "@container": "@set",
              "@id": "sosa:hasMember",
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
                  "@id": "surv:pose"
                },
                "distance": "surv:distance"
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
            }
          }
        }
      },
      "@id": "container:occupationObservations"
    },
    "occupationFeatures": "container:occupationFeatures",
    "Arc": "geojson:Arc",
    "ArcWithCenter": "geojson:ArcWithCenter",
    "ArcByChord": "geojson:ArcByChord",
    "CircleByCenter": "geojson:CircleByCenter",
    "CubicSpline": "geojson:CubicSpline",
    "radius": "geojson:radius",
    "arcLength": "geojson:arcLength",
    "startTangentVector": "geojson:startTangentVector",
    "endTangentVector": "geojson:endTangentVector",
    "ref": "topo:ref",
    "orientation": "topo:orientation",
    "Edge": "topo:Edge",
    "Face": "topo:Face",
    "Ring": "topo:Ring",
    "Shell": "topo:Shell",
    "Solid": "topo:Solid",
    "rings": {
      "@id": "topo:rings",
      "@container": "@list"
    },
    "shells": {
      "@id": "topo:shells",
      "@container": "@list"
    },
    "faces": {
      "@id": "topo:faces",
      "@container": "@list"
    },
    "activityType": "@type",
    "agentType": "@type",
    "entityType": "@type",
    "provType": "@type",
    "Activity": "prov:Activity",
    "ActivityInfluence": "prov:ActivityInfluence",
    "Agent": "prov:Agent",
    "AgentInfluence": "prov:AgentInfluence",
    "Association": "prov:Association",
    "Attribution": "prov:Attribution",
    "Bundle": "prov:Bundle",
    "Collection": "prov:Collection",
    "Communication": "prov:Communication",
    "Delegation": "prov:Delegation",
    "Derivation": "prov:Derivation",
    "EmptyCollection": "prov:EmptyCollection",
    "End": "prov:End",
    "Entity": "prov:Entity",
    "EntityInfluence": "prov:EntityInfluence",
    "Generation": "prov:Generation",
    "Influence": "prov:Influence",
    "InstantaneousEvent": "prov:InstantaneousEvent",
    "Invalidation": "prov:Invalidation",
    "Location": "prov:Location",
    "Organization": "prov:Organization",
    "Person": "prov:Person",
    "Plan": "prov:Plan",
    "PrimarySource": "prov:PrimarySource",
    "Quotation": "prov:Quotation",
    "Revision": "prov:Revision",
    "Role": "prov:Role",
    "SoftwareAgent": "prov:SoftwareAgent",
    "Start": "prov:Start",
    "Usage": "prov:Usage",
    "ServiceDescription": "prov:ServiceDescription",
    "DirectQueryService": "prov:DirectQueryService",
    "Accept": "prov:Accept",
    "Contribute": "prov:Contribute",
    "Contributor": "prov:Contributor",
    "Copyright": "prov:Copyright",
    "Create": "prov:Create",
    "Creator": "prov:Creator",
    "Modify": "prov:Modify",
    "Publish": "prov:Publish",
    "Publisher": "prov:Publisher",
    "Replace": "prov:Replace",
    "RightsAssignment": "prov:RightsAssignment",
    "RightsHolder": "prov:RightsHolder",
    "Submit": "prov:Submit",
    "Dictionary": "prov:Dictionary",
    "EmptyDictionary": "prov:EmptyDictionary",
    "KeyEntityPair": "prov:KeyEntityPair",
    "Insertion": "prov:Insertion",
    "Removal": "prov:Removal",
    "atTime": {
      "@id": "prov:atTime",
      "@type": "xsd:dateTime"
    },
    "endedAtTime": {
      "@id": "prov:endedAtTime",
      "@type": "xsd:dateTime"
    },
    "generatedAtTime": {
      "@id": "prov:generatedAtTime",
      "@type": "xsd:dateTime"
    },
    "invalidatedAtTime": {
      "@id": "prov:invalidatedAtTime",
      "@type": "xsd:dateTime"
    },
    "startedAtTime": {
      "@id": "prov:startedAtTime",
      "@type": "xsd:dateTime"
    },
    "value": "prov:value",
    "provenanceUriTemplate": "prov:provenanceUriTemplate",
    "pairKey": {
      "@id": "prov:pairKey",
      "@type": "rdfs:Literal"
    },
    "removedKey": {
      "@id": "prov:removedKey",
      "@type": "rdfs:Literal"
    },
    "actedOnBehalfOf": {
      "@id": "prov:actedOnBehalfOf",
      "@type": "@id"
    },
    "agent": {
      "@id": "prov:agent",
      "@type": "@id"
    },
    "alternateOf": {
      "@id": "prov:alternateOf",
      "@type": "@id"
    },
    "atLocation": {
      "@id": "prov:atLocation",
      "@type": "@id"
    },
    "entity": {
      "@id": "prov:entity",
      "@type": "@id"
    },
    "generated": {
      "@id": "prov:generated",
      "@type": "@id"
    },
    "hadActivity": {
      "@id": "prov:hadActivity",
      "@type": "@id"
    },
    "activity": {
      "@id": "prov:activity",
      "@type": "@id"
    },
    "hadGeneration": {
      "@id": "prov:hadGeneration",
      "@type": "@id"
    },
    "hadMember": {
      "@id": "prov:hadMember",
      "@type": "@id"
    },
    "hadPlan": {
      "@id": "prov:hadPlan",
      "@type": "@id"
    },
    "hadPrimarySource": {
      "@id": "prov:hadPrimarySource",
      "@type": "@id"
    },
    "hadRole": {
      "@id": "prov:hadRole",
      "@type": "@id"
    },
    "hadUsage": {
      "@id": "prov:hadUsage",
      "@type": "@id"
    },
    "influenced": {
      "@id": "prov:influenced",
      "@type": "@id"
    },
    "influencer": {
      "@id": "prov:influencer",
      "@type": "@id"
    },
    "invalidated": {
      "@id": "prov:invalidated",
      "@type": "@id"
    },
    "qualifiedAssociation": {
      "@id": "prov:qualifiedAssociation",
      "@type": "@id"
    },
    "qualifiedAttribution": {
      "@id": "prov:qualifiedAttribution",
      "@type": "@id"
    },
    "qualifiedCommunication": {
      "@id": "prov:qualifiedCommunication",
      "@type": "@id"
    },
    "qualifiedDelegation": {
      "@id": "prov:qualifiedDelegation",
      "@type": "@id"
    },
    "qualifiedDerivation": {
      "@id": "prov:qualifiedDerivation",
      "@type": "@id"
    },
    "qualifiedEnd": {
      "@id": "prov:qualifiedEnd",
      "@type": "@id"
    },
    "qualifiedGeneration": {
      "@id": "prov:qualifiedGeneration",
      "@type": "@id"
    },
    "qualifiedInfluence": {
      "@id": "prov:qualifiedInfluence",
      "@type": "@id"
    },
    "qualifiedInvalidation": {
      "@id": "prov:qualifiedInvalidation",
      "@type": "@id"
    },
    "qualifiedPrimarySource": {
      "@id": "prov:qualifiedPrimarySource",
      "@type": "@id"
    },
    "qualifiedQuotation": {
      "@id": "prov:qualifiedQuotation",
      "@type": "@id"
    },
    "qualifiedRevision": {
      "@id": "prov:qualifiedRevision",
      "@type": "@id"
    },
    "qualifiedStart": {
      "@id": "prov:qualifiedStart",
      "@type": "@id"
    },
    "qualifiedUsage": {
      "@id": "prov:qualifiedUsage",
      "@type": "@id"
    },
    "specializationOf": {
      "@id": "prov:specializationOf",
      "@type": "@id"
    },
    "used": {
      "@id": "prov:used",
      "@type": "@id"
    },
    "wasAssociatedWith": {
      "@id": "prov:wasAssociatedWith",
      "@type": "@id"
    },
    "wasAttributedTo": {
      "@id": "prov:wasAttributedTo",
      "@type": "@id"
    },
    "wasDerivedFrom": {
      "@id": "prov:wasDerivedFrom",
      "@type": "@id"
    },
    "wasEndedBy": {
      "@id": "prov:wasEndedBy",
      "@type": "@id"
    },
    "wasInfluencedBy": {
      "@id": "prov:wasInfluencedBy",
      "@type": "@id"
    },
    "wasInformedBy": {
      "@id": "prov:wasInformedBy",
      "@type": "@id"
    },
    "wasInvalidatedBy": {
      "@id": "prov:wasInvalidatedBy",
      "@type": "@id"
    },
    "wasQuotedFrom": {
      "@id": "prov:wasQuotedFrom",
      "@type": "@id"
    },
    "wasRevisionOf": {
      "@id": "prov:wasRevisionOf",
      "@type": "@id"
    },
    "wasStartedBy": {
      "@id": "prov:wasStartedBy",
      "@type": "@id"
    },
    "has_anchor": {
      "@id": "prov:has_anchor",
      "@type": "@id"
    },
    "has_query_service": {
      "@id": "prov:has_query_service",
      "@type": "@id"
    },
    "describesService": {
      "@id": "prov:describesService",
      "@type": "@id"
    },
    "pingback": {
      "@id": "prov:pingback",
      "@type": "@id"
    },
    "dictionary": {
      "@id": "prov:dictionary",
      "@type": "@id"
    },
    "derivedByInsertionFrom": {
      "@id": "prov:derivedByInsertionFrom",
      "@type": "@id"
    },
    "derivedByRemovalFrom": {
      "@id": "prov:derivedByRemovalFrom",
      "@type": "@id"
    },
    "insertedKeyEntityPair": {
      "@id": "prov:insertedKeyEntityPair",
      "@type": "@id"
    },
    "hadDictionaryMember": {
      "@id": "prov:hadDictionaryMember",
      "@type": "@id"
    },
    "pairEntity": {
      "@id": "prov:pairEntity",
      "@type": "@id"
    },
    "qualifiedInsertion": {
      "@id": "prov:qualifiedInsertion",
      "@type": "@id"
    },
    "qualifiedRemoval": {
      "@id": "prov:qualifiedRemoval",
      "@type": "@id"
    },
    "asInBundle": {
      "@id": "prov:asInBundle",
      "@type": "@id"
    },
    "mentionOf": {
      "@id": "prov:mentionOf",
      "@type": "@id"
    },
    "CompoundName": "commonpatterns:CompoundName",
    "vectorPurpose": {
      "@type": "@id",
      "@id": "surv:vectorPurpose"
    },
    "monumentedBy": {
      "@type": "@id",
      "@id": "surv:monumentedBy"
    },
    "comment": "rdfs:comment",
    "note": "rdfs:comment",
    "age": "surv:age",
    "geodeticid": "surv:geodeticid",
    "fromSurvey": {
      "@type": "@id",
      "@id": "surv:fromSurvey"
    },
    "CadastralMark": {
      "@id": "surv:CadastralMark",
      "@type": "@id"
    },
    "BoundaryMark": {
      "@id": "surv:BoundaryMark",
      "@type": "@id"
    },
    "ptQuality": {
      "@id": "csdm:commonpatterns/qualityClass",
      "@type": "@id"
    },
    "ptQualityMeasure": {
      "@id": "csdm:commonpatterns/qualityMeasure",
      "@type": "@id"
    },
    "GeodeticReferenceMark": {
      "@id": "surv:GeodeticReferenceMark",
      "@type": "@id"
    },
    "ObservedVector": {
      "@id": "surv:ObservedVector",
      "@type": "@id"
    },
    "AdoptedVector": {
      "@id": "surv:SurveyedVector",
      "@type": "@id"
    },
    "label": "rdfs:label",
    "parcelQualityClass": {
      "@id": "parcel:qualityClass",
      "@type": "@id"
    },
    "terrainIntersectionCurve": "parcel:terrainIntersectionCurve",
    "directed_references": {
      "@id": "topo:directedReferences",
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
      "@type": "@id"
    },
    "hasResultQuality": {
      "@id": "sosa:hasResultQuality",
      "@type": "@id"
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
    "hasMember": {
      "@id": "sosa:hasMember",
      "@type": "@id"
    },
    "hasFeatureOfInterest": {
      "@id": "sosa:hasFeatureOfInterest",
      "@type": "@id"
    },
    "madeBySensor": {
      "@id": "sosa:madeBySensor",
      "@type": "@id"
    },
    "observedProperty": {
      "@id": "sosa:observedProperty",
      "@type": "@id"
    },
    "phenomenonTime": {
      "@id": "sosa:phenomenonTime",
      "@type": "@id"
    },
    "resultTime": "sosa:resultTime",
    "usedProcedure": {
      "@id": "sosa:usedProcedure",
      "@type": "@id"
    },
    "container": "csdm:container/",
    "sdo": "https://schema.org/",
    "csd": "csdm:csd/",
    "surv": "csdm:surveyfeatures/",
    "geojson": "https://purl.org/geojson/vocab#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
    "dct": "http://purl.org/dc/terms/",
    "owlTime": "http://www.w3.org/2006/time#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "topo": "https://purl.org/geojson/topo#",
    "prof": "http://www.w3.org/ns/dx/prof/",
    "prov": "http://www.w3.org/ns/prov#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "commonpatterns": "https://w3id.org/ogc/utils/label/",
    "csdm": "https://linked.data.gov.au/def/csdm/",
    "geosparql": "http://www.opengis.net/ont/geosparql#",
    "parcel": "https://w3id.org/ogc/ladm/parcels/",
    "sosa": "http://www.w3.org/ns/sosa/",
    "ssn-system": "ssn:systems/",
    "ssn": "http://www.w3.org/ns/ssn/",
    "geopose": "csdm:utils/geopose/",
    "angletype": "csdm:defs/angletypes/",
    "distancetype": "csdm:defs/distancetypes/",
    "surveyproc": "csdm:defs/surveyprocedures/",
    "surveyable": "csdm:defs/surveyableproperties/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/CSD/context.jsonld)

## Sources

* [3D Cadastre Survey Data Model](https://icsm-au.github.io/3d-csdm-design/2022/spec.html)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/features/CSD`

