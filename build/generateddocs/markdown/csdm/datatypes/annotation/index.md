
# Generalised annotation (Schema)

`icsm.csdm.datatypes.annotation` *v0.1*

An annotation allowing multiple values, either links with descriptions or simple text.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Example CompoundName
A name with a label, but also a set of parts with roles that can be validated against content rules.
#### json
```json
[
  {
    "description": "Annotation with link and role",
    "href": "http://example.org/aDocument",
    "role": "http://example.org/myReason",
    "rel": "related"
  },
  {
    "description": "Annotation with role",
    "role": "http://example.org/myReason"
  },
  "Plain text annotation"
]

```

#### jsonld
```jsonld
{
  "@context": "https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/annotation/context.jsonld",
  "@graph": [
    {
      "description": "Annotation with link and role",
      "href": "http://example.org/aDocument",
      "role": "http://example.org/myReason",
      "rel": "related"
    },
    {
      "description": "Annotation with role",
      "role": "http://example.org/myReason"
    },
    "Plain text annotation"
  ]
}
```

#### ttl
```ttl
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix prof: <http://www.w3.org/ns/dx/prof/> .

[] dcterms:description "Annotation with role" ;
    prof:hasRole <http://example.org/myReason> .

[] dcterms:description "Annotation with link and role" ;
    ns1:relation <http://www.iana.org/assignments/relation/related> ;
    prof:hasRole <http://example.org/myReason> ;
    oa:hasTarget <http://example.org/aDocument> .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$defs:
  linkWithRole:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/json-fg/link-role/schema.yaml
  codeRef:
    $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/iri-or-curie/schema.yaml
  Options:
    anyOf:
    - $ref: '#/$defs/linkWithRole'
    - properties:
        role:
          $ref: '#/$defs/codeRef'
        description:
          type: string
          x-jsonld-id: http://purl.org/dc/terms/description
      required:
      - description
    - type: string
  AnnotationSet:
    anyOf:
    - $ref: '#/$defs/Options'
    - type: 'null'
    - type: array
      items:
        $ref: '#/$defs/Options'
allOf:
- $ref: '#/$defs/AnnotationSet'
x-jsonld-extra-terms:
  description: http://purl.org/dc/terms/description
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/

```

Links to the schema:

* YAML version: [schema.yaml](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/annotation/schema.json)
* JSON version: [schema.json](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/annotation/schema.yaml)


# JSON-LD Context

```jsonld
{
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
    },
    "description": "dct:description",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "prof": "http://www.w3.org/ns/dx/prof/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://surroundaustralia.github.io/3d-csdm-common/build/annotated/csdm/datatypes/annotation/context.jsonld)

## Sources

* [CSDM model](https://github.com/icsm-au/3d-csdm)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/surroundaustralia/3d-csdm-common](https://github.com/surroundaustralia/3d-csdm-common)
* Path: `_sources/csdm/datatypes/annotation`

