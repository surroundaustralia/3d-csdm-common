
# Survey Features (Schema)

`icsm.csdm.features.SurveyFeatures` *v0.1*

The set of geographic features present on a survey - these include the FeatureOfInterest for observations

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## Survey Point

Any point of interest in a survey. It may relate to a boundary corner (marked or unmarked), a cadastral mark, a geodetic reference mark, or an occupation mark.

This is an abstract class, usually implemented by a subclass such as a SurevyMark with additional details.


## Examples

### Example Survey Points
An example Survey Point showing use of GeoJSON geometry and compound names.
Note that the in FG-JSON "place" is used as a geometry element since "geometry" is defined to be WGS84,
 however by "prior agreement" an alternative CRS can be defined.

Either geometry will inherit its CRS from the container's defaults.
3D wil require an extended model however - possibly by extending FG-JSON - or adding explicit topology.
#### json
```json
{
  "@context": {
    "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
    "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypoint-purpose/",
    "nz-surveypoint-state": "https://linked.data.gov.au/def/csdm/nz-surveypoint-state/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "registered-surveyors": "https://example.org/surveyors/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
  },
  "id": "P1",
  "type": "Feature",
  "featureType": "BoundaryMark",
  "note": "All survey marks will have a monumented state - a physical monument may be absent however using a monument type which is an explicit statement about the state",
  "geometry": {
    "type": "Point",
    "coordinates": [
      1.1,
      2.7
    ]
  },
  "properties": {
    "purpose": "nz-surveypoint-purpose:boundary",
    "state": "nz-surveypoint-state:original",
    "monumentedBy": {
      "form": "nz-monument-form:pin",
      "condition": "nz-monument-condition:fair",
      "state": "nz-monument-state:present"
    },
    "name": {
      "label": "IS I - DP 3333",
      "hasPart": [
        {
          "type": "Source",
          "label": "DP 3333"
        },
        {
          "type": "Stamp",
          "label": "IS I"
        }
      ]
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/context.jsonld",
    {
      "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
      "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypoint-purpose/",
      "nz-surveypoint-state": "https://linked.data.gov.au/def/csdm/nz-surveypoint-state/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "registered-surveyors": "https://example.org/surveyors/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
    }
  ],
  "id": "P1",
  "type": "Feature",
  "featureType": "BoundaryMark",
  "note": "All survey marks will have a monumented state - a physical monument may be absent however using a monument type which is an explicit statement about the state",
  "geometry": {
    "type": "Point",
    "coordinates": [
      1.1,
      2.7
    ]
  },
  "properties": {
    "purpose": "nz-surveypoint-purpose:boundary",
    "state": "nz-surveypoint-state:original",
    "monumentedBy": {
      "form": "nz-monument-form:pin",
      "condition": "nz-monument-condition:fair",
      "state": "nz-monument-state:present"
    },
    "name": {
      "label": "IS I - DP 3333",
      "hasPart": [
        {
          "type": "Source",
          "label": "DP 3333"
        },
        {
          "type": "Stamp",
          "label": "IS I"
        }
      ]
    }
  }
}
```

#### ttl
```ttl
@prefix commonpatterns: <https://linked.data.gov.au/def/csdm/commonpatterns/> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix eg1: <https://linked.data.gov.au/def/csdm/csd-example/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://w3id.org/ogc/utils/label/> .
@prefix nz-monument-condition: <https://linked.data.gov.au/def/csdm/nz-monument-condition/> .
@prefix nz-monument-form: <https://linked.data.gov.au/def/csdm/nz-monument-form/> .
@prefix nz-monument-state: <https://linked.data.gov.au/def/csdm/nz-monument-state/> .
@prefix nz-surveypoint-purpose: <https://linked.data.gov.au/def/csdm/nz-surveypoint-purpose/> .
@prefix nz-surveypoint-state: <https://linked.data.gov.au/def/csdm/nz-surveypoint-state/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

eg1:P1 a surv:BoundaryMark,
        geojson:Feature ;
    rdfs:comment "All survey marks will have a monumented state - a physical monument may be absent however using a monument type which is an explicit statement about the state" ;
    commonpatterns:name [ rdfs:label "IS I - DP 3333" ;
            dct:hasPart [ rdfs:label "DP 3333" ;
                    ns1:namePartType "Source" ],
                [ rdfs:label "IS I" ;
                    ns1:namePartType "Stamp" ] ] ;
    surv:monumentedBy [ surv:condition nz-monument-condition:fair ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:present ] ;
    surv:purpose nz-surveypoint-purpose:boundary ;
    surv:state nz-surveypoint-state:original ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.1e+00 2.7e+00 ) ] .


```


### Example Geodetic Mark
An example Geodetic Mark extending Survey Point with additional geodeticid attribute
#### json
```json
{
  "@context": {
    "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
    "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "registered-surveyors": "https://example.org/surveyors/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
  },
  "id": "P2",
  "type": "Feature",
  "featureType": "GeodeticReferenceMark",
  "geometry": {
    "type": "Point",
    "coordinates": [
      2.1,
      3.7
    ]
  },
  "properties": {
    "name": {
      "label": "IS II - DP 3333",
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
    },
    "purpose": "nz-surveypoint-purpose:geodeticref",
    "monumentedBy": {
      "form": "nz-monument-form:pin",
      "condition": "nz-monument-condition:fair",
      "state": "nz-monument-state:present"
    },
    "geodeticid": "XX 33455"
  }
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/context.jsonld",
    {
      "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
      "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "registered-surveyors": "https://example.org/surveyors/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
    }
  ],
  "id": "P2",
  "type": "Feature",
  "featureType": "GeodeticReferenceMark",
  "geometry": {
    "type": "Point",
    "coordinates": [
      2.1,
      3.7
    ]
  },
  "properties": {
    "name": {
      "label": "IS II - DP 3333",
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
    },
    "purpose": "nz-surveypoint-purpose:geodeticref",
    "monumentedBy": {
      "form": "nz-monument-form:pin",
      "condition": "nz-monument-condition:fair",
      "state": "nz-monument-state:present"
    },
    "geodeticid": "XX 33455"
  }
}
```

#### ttl
```ttl
@prefix commonpatterns: <https://linked.data.gov.au/def/csdm/commonpatterns/> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix eg1: <https://linked.data.gov.au/def/csdm/csd-example/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://w3id.org/ogc/utils/label/> .
@prefix nz-monument-condition: <https://linked.data.gov.au/def/csdm/nz-monument-condition/> .
@prefix nz-monument-form: <https://linked.data.gov.au/def/csdm/nz-monument-form/> .
@prefix nz-monument-state: <https://linked.data.gov.au/def/csdm/nz-monument-state/> .
@prefix nz-surveypoint-purpose: <https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

eg1:P2 a surv:GeodeticReferenceMark,
        geojson:Feature ;
    commonpatterns:name [ rdfs:label "IS II - DP 3333" ;
            dct:hasPart [ rdfs:label "DP 3333" ;
                    ns1:namePartType "Source" ],
                [ rdfs:label "IS II" ;
                    ns1:namePartType "Stamp" ] ] ;
    surv:geodeticid "XX 33455" ;
    surv:monumentedBy [ surv:condition nz-monument-condition:fair ;
            surv:form nz-monument-form:pin ;
            surv:state nz-monument-state:present ] ;
    surv:purpose nz-surveypoint-purpose:geodeticref ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 2.1e+00 3.7e+00 ) ] .


```


### Example Monument
A monument as a standalone object
#### json
```json
{
  "@context": {
    "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
    "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "registered-surveyors": "https://example.org/surveyors/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
  },
  "form": "nz-monument-form:pin",
  "condition": "nz-monument-condition:fair",
  "state": "nz-monument-state:present"
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/context.jsonld",
    {
      "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
      "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "registered-surveyors": "https://example.org/surveyors/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
    }
  ],
  "form": "nz-monument-form:pin",
  "condition": "nz-monument-condition:fair",
  "state": "nz-monument-state:present"
}
```

#### ttl
```ttl
@prefix nz-monument-condition: <https://linked.data.gov.au/def/csdm/nz-monument-condition/> .
@prefix nz-monument-form: <https://linked.data.gov.au/def/csdm/nz-monument-form/> .
@prefix nz-monument-state: <https://linked.data.gov.au/def/csdm/nz-monument-state/> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .

[] surv:condition nz-monument-condition:fair ;
    surv:form nz-monument-form:pin ;
    surv:state nz-monument-state:present .


```


### Vectors
An example vector (line between two points) using the topo-line schema from the generalised topo-feature module
#### json
```json
{
  "@context": {
    "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
    "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
    "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
    "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
    "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
    "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
    "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
    "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
    "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
    "registered-surveyors": "https://example.org/surveyors/",
    "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
  },
  "id": "P1P3",
  "type": "Feature",
  "featureType": "ObservedVector",
  "geometry": null,
  "topology": {
    "type": "LineString",
    "references": [ "P1", "P3"]
  },
  "properties": {
    "fromSurvey": "csdref-1",
    "vectorPurpose": "code:aPurpose",
    "distance": 3.444
  }
}
```

#### jsonld
```jsonld
{
  "@context": [
    "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/context.jsonld",
    {
      "@base": "https://linked.data.gov.au/def/csdm/csd-example/",
      "eg1": "https://linked.data.gov.au/def/csdm/csd-example/",
      "surveyable": "https://linked.data.gov.au/def/csdm/observedProperties/",
      "surveyproc": "https://linked.data.gov.au/def/csdm/observationProcedures/",
      "nz-surveypoint-purpose": "https://linked.data.gov.au/def/csdm/nz-surveypointpurpose/",
      "icsm-survey-type": "https://linked.data.gov.au/def/csdm/icsm-survey-type/",
      "nz-monument-form": "https://linked.data.gov.au/def/csdm/nz-monument-form/",
      "nz-monument-condition": "https://linked.data.gov.au/def/csdm/nz-monument-condition/",
      "nz-monument-state": "https://linked.data.gov.au/def/csdm/nz-monument-state/",
      "registered-surveyors": "https://example.org/surveyors/",
      "icsm-jurisdictions": "https://linked.data.gov.au/def/jurisdictions/"
    }
  ],
  "id": "P1P3",
  "type": "Feature",
  "featureType": "ObservedVector",
  "geometry": null,
  "topology": {
    "type": "LineString",
    "references": [
      "P1",
      "P3"
    ]
  },
  "properties": {
    "fromSurvey": "csdref-1",
    "vectorPurpose": "code:aPurpose",
    "distance": 3.444
  }
}
```

#### ttl
```ttl
@prefix eg1: <https://linked.data.gov.au/def/csdm/csd-example/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix surv: <https://linked.data.gov.au/def/csdm/surveyfeatures/> .
@prefix topo: <https://purl.org/geojson/topo#> .

eg1:P1P3 a surv:ObservedVector,
        geojson:Feature ;
    surv:fromSurvey eg1:csdref-1 ;
    surv:vectorPurpose <code:aPurpose> ;
    geojson:topology [ a geojson:LineString ;
            topo:relatedFeatures ( eg1:P1 eg1:P3 ) ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Survey Features
$defs:
  coderef:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/iri-or-curie/schema.yaml
  nullableString:
    oneOf:
    - type: string
    - type: 'null'
  TopoLine:
    $ref: https://ogcincubator.github.io/topo-feature/build/annotated/geo/topo/features/topo-line/schema.yaml
  FeatureOptions:
    anyOf:
    - $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/feature/schema.yaml
    - $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/feature-lenient/schema.yaml
    - $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/common/data_types/geojson/schema.yaml
  SurveyPointProperties:
    type: object
    properties:
      name:
        $ref: https://ogcincubator.github.io/bblocks-utility/build/annotated/bbr/utils/compoundName/schema.yaml
        x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/name
        x-jsonld-type: '@id'
      purpose:
        oneOf:
        - $ref: '#/$defs/coderef'
        - type: array
          items:
            $ref: '#/$defs/coderef'
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/purpose
      has_provenance:
        $ref: https://ogcincubator.github.io/bblock-prov-schema/build/annotated/ogc-utils/prov/schema.yaml
      ptQuality:
        $ref: '#/$defs/coderef'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/qualityClass
        x-jsonld-type: '@id'
      ptQualityMeasure:
        type: number
        x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/qualityMeasure
        x-jsonld-type: '@id'
      comment:
        $ref: '#/$defs/nullableString'
        x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#comment
    required:
    - purpose
  OccupationMark:
    allOf:
    - $ref: '#/$defs/FeatureOptions'
    - type: object
      properties:
        featureType:
          const: OccupationMark
        properties:
          $ref: '#/$defs/OccupationMarkProperties'
    required:
    - featureType
  OccupationMarkProperties:
    allOf:
    - $ref: '#/$defs/SurveyPointProperties'
    - type: object
      properties:
        age:
          type: string
          description: A string that may be constrained to a number or range using
            a regex
          x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/age
        note:
          type: string
          x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#comment
      required:
      - age
  SurveyMarkProperties:
    allOf:
    - $ref: '#/$defs/SurveyPointProperties'
    - type: object
      properties:
        monumentedBy:
          $ref: '#/$defs/Monument'
          x-jsonld-type: '@id'
          x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/monumentedBy
      required:
      - monumentedBy
  GeodeticReferenceMark:
    allOf:
    - $ref: '#/$defs/FeatureOptions'
    properties:
      featureType:
        const: GeodeticReferenceMark
      properties:
        allOf:
        - $ref: '#/$defs/GeodeticReferenceMarkProperties'
    required:
    - featureType
  GeodeticReferenceMarkProperties:
    type: object
    allOf:
    - $ref: '#/$defs/SurveyMarkProperties'
    - type: object
      properties:
        geodeticid:
          $ref: https://ogcincubator.github.io/bblocks-utility/build/annotated/bbr/utils/compoundName/schema.yaml
          x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/geodeticid
      required:
      - geodeticid
  CadastralMark:
    properties:
      featureType:
        const: CadastralMark
      properties:
        allOf:
        - $ref: '#/$defs/SurveyMarkProperties'
    required:
    - featureType
  BoundaryMark:
    properties:
      featureType:
        const: BoundaryMark
      properties:
        allOf:
        - $ref: '#/$defs/SurveyMarkProperties'
    required:
    - featureType
  Monument:
    type: object
    properties:
      condition:
        $ref: '#/$defs/coderef'
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/condition
      form:
        $ref: '#/$defs/coderef'
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/form
      replaces:
        type: string
        format: uri-reference
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/replaces
      state:
        $ref: '#/$defs/coderef'
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/state
    required:
    - state
  SurveyedVector:
    x-json-comment: featureType is not defined - this is abstract and overidden by
      subclasses
    allOf:
    - $ref: '#/$defs/TopoLine'
    - featureType:
        const: SurveyedVector
    - properties:
        properties:
          $ref: '#/$defs/SurveyedVectorProperties'
      required:
      - featureType
  SurveyedVectorProperties:
    type: object
    properties:
      distance:
        type: number
      vectorPurpose:
        $ref: '#/$defs/coderef'
        x-jsonld-type: '@id'
        x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/vectorPurpose
      comment:
        $ref: '#/$defs/nullableString'
        x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#comment
    required:
    - vectorPurpose
  AdoptedVector:
    x-json-comment: featureType is not defined - this is abstract and overidden by
      subclasses
    allOf:
    - $ref: '#/$defs/TopoLine'
    - featureType:
        const: AdoptedVector
    - properties:
        properties:
          $ref: '#/$defs/AdoptedVectorProperties'
      required:
      - featureType
  AdoptedVectorProperties:
    allOf:
    - $ref: '#/$defs/SurveyedVectorProperties'
    - properties:
        fromSurvey:
          $ref: '#/$defs/coderef'
          x-jsonld-type: '@id'
          x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/fromSurvey
anyOf:
- $ref: '#/$defs/BoundaryMark'
- $ref: '#/$defs/OccupationMark'
- $ref: '#/$defs/CadastralMark'
- $ref: '#/$defs/GeodeticReferenceMark'
- $ref: '#/$defs/Monument'
- $ref: '#/$defs/SurveyedVector'
x-jsonld-extra-terms:
  place: https://purl.org/geojson/vocab#geometry
  purpose:
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/purpose
  vectorPurpose:
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/vectorPurpose
  monumentedBy:
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/monumentedBy
  comment: http://www.w3.org/2000/01/rdf-schema#comment
  note: http://www.w3.org/2000/01/rdf-schema#comment
  age: https://linked.data.gov.au/def/csdm/surveyfeatures/age
  geodeticid: https://linked.data.gov.au/def/csdm/surveyfeatures/geodeticid
  fromSurvey:
    x-jsonld-type: '@id'
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/fromSurvey
  CadastralMark:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/CadastralMark
    x-jsonld-type: '@id'
  BoundaryMark:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/BoundaryMark
    x-jsonld-type: '@id'
  ptQuality:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/qualityClass
    x-jsonld-type: '@id'
  ptQualityMeasure:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/qualityMeasure
    x-jsonld-type: '@id'
  GeodeticReferenceMark:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/GeodeticReferenceMark
    x-jsonld-type: '@id'
  ObservedVector:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/ObservedVector
    x-jsonld-type: '@id'
  AdoptedVector:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/surveyfeatures/SurveyedVector
    x-jsonld-type: '@id'
  name:
    x-jsonld-id: https://linked.data.gov.au/def/csdm/commonpatterns/name
    x-jsonld-type: '@id'
  label: http://www.w3.org/2000/01/rdf-schema#label
x-jsonld-prefixes:
  geojson: https://purl.org/geojson/vocab#
  surv: https://linked.data.gov.au/def/csdm/surveyfeatures/
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  commonpatterns: https://linked.data.gov.au/def/csdm/commonpatterns/
  csdm: https://linked.data.gov.au/def/csdm/
  geosparql: http://www.opengis.net/ont/geosparql#
  dct: http://purl.org/dc/terms/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "featureType": "@type",
    "properties": "@nest",
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
      "@id": "geojson:features"
    },
    "type": "@type",
    "id": "@id",
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
    "purpose": {
      "@type": "@id",
      "@id": "surv:purpose"
    },
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
    "geodeticid": {
      "@id": "surv:geodeticid",
      "@context": {
        "name": "https://w3id.org/ogc/utils/label/name",
        "hasPart": {
          "@context": {
            "ref": "https://w3id.org/ogc/utils/label/namePartRef",
            "type": "https://w3id.org/ogc/utils/label/namePartType"
          },
          "@id": "dct:hasPart"
        }
      }
    },
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
      "@id": "commonpatterns:qualityClass",
      "@type": "@id"
    },
    "ptQualityMeasure": {
      "@id": "commonpatterns:qualityMeasure",
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
    "name": {
      "@id": "commonpatterns:name",
      "@type": "@id",
      "@context": {
        "name": "https://w3id.org/ogc/utils/label/name",
        "hasPart": {
          "@context": {
            "ref": "https://w3id.org/ogc/utils/label/namePartRef",
            "type": "https://w3id.org/ogc/utils/label/namePartType"
          },
          "@id": "dct:hasPart"
        }
      }
    },
    "label": "rdfs:label",
    "CompoundName": "https://w3id.org/ogc/utils/label/CompoundName",
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
    "wasGeneratedBy": {
      "@id": "prov:wasGeneratedBy",
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
    "has_provenance": {
      "@id": "dct:provenance",
      "@type": "@id",
      "@context": {
        "name": "rdfs:label"
      }
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
    "geojson": "https://purl.org/geojson/vocab#",
    "surv": "csdm:surveyfeatures/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "commonpatterns": "csdm:commonpatterns/",
    "csdm": "https://linked.data.gov.au/def/csdm/",
    "geosparql": "http://www.opengis.net/ont/geosparql#",
    "dct": "http://purl.org/dc/terms/",
    "prov": "http://www.w3.org/ns/prov#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "oa": "http://www.w3.org/ns/oa#",
    "owlTime": "http://www.w3.org/2006/time#",
    "topo": "https://purl.org/geojson/topo#",
    "prof": "http://www.w3.org/ns/dx/prof/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/features/SurveyFeatures/context.jsonld)

## Sources

* [3D Cadastre Survey Data Model](https://github.com/icsm-au/3d-csdm)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/features/SurveyFeatures`

