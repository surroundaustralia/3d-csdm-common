# 3D Cadastre Survey Data Exchange Specification

This resource is a view of the specification for the 3D Cadastral Survey Data (CSD) Exchange Schema. 

The specification is a machine-readable, modular data exchange model using the JSON language, using JSON Schema for structure and a semantic model (JSON-LD and SHACL rules) for more complex constraints. 

  **[Implementation profiles](https://icsm-au.github.io/3d-csdm-profiles/)**  with extensive examples are available for Australian and New Zealand jurisdictions.**

The core (top level container) schema can be viewed using the in-built documentation system **[here](bblock/icsm.csdm.features.CSD)** 

The schema re-uses, flexible, standards based components using the [OGC Building Blocks methodology](https://github.com/opengeospatial/bblock-template/blob/master/USAGE.md).  

The [set of modules comprising the specification](bblock) is implemented as a "register" of "Building Blocks" managed within a [Git repository](https://icsm-au.github.io/3d-csdm-schema/). 

The [documentation for the underlying 3D CSDM](https://icsm-au.github.io/3d-csdm/docs/) data model collates the elements from all the inherited components into a single comprehensive document (directly from the machine-readable sources) 

_Implementation Profiles (e.g. for each Jurisdiction) use the same documentation form extended with specific constraints and vocabulary usages_


This specification defines a [JSON schema](https://json-schema.org/) compatible with the [OGC API Features](https://opengeospatial.github.io/e-learning/ogcapi-features/text/basic-main.html) data exchange model.

This schema is linked to the underlying [3D Cadastre Model](https://icsm-au.github.io/3d-csdm/) using JSON-LD, which allows additional constraint rules to be specified using the [SHACL (Shapes Constraint Language) standard](https://www.w3.org/TR/shacl/).

_The **[REVIEW GUIDE](https://github.com/icsm-au/3d-csdm-profiles/blob/main/REVIEW_GUIDE.md)** provides a detailed overview of all aspects of the design and testing process, and related materials._

This implementation pattern:

- is supported by the OGC with a set of [open source tools](https://github.com/opengeospatial/bblock-template) and a library of building blocks based on OGC specifications.
- simplifies development, testing and documentation of each component
- allows for transparent, machine-readable, identification of the underlying standards each component is based on
- allows richer machine readable specifications of implementation constraints and controlled vocabulary requirements.
- supports explicit machine readable profile specifications to support discovery of all the different components required.

The "semantic annotation" capabilities of the OGC Building Block design links the schema to the conceptual and logical models.
_NB Publication of these models as Linked Data would allow access to documentation of each element by online systems_.


## Building Blocks

### `icsm.csdm.datatypes.quality` — SurveyQuality

**Type:** schema

A extensible quality descriptor object with standard properties for survey point and vector observations.

### `icsm.csdm.datatypes.annotation` — Generalised annotation

**Type:** schema

An annotation allowing multiple values, either links with descriptions or simple text.

### `icsm.csdm.features.SurveyObservations` — Survey Observations

**Type:** schema

An Observation specialisation for an aspect of a survey - typically vectors with new or adopted bearings and distances.

### `icsm.csdm.features.SurveyFeatures` — Survey Features

**Type:** schema

The set of geographic features present on a survey - these include the FeatureOfInterest for observations

### `icsm.csdm.features.CSD` — Cadastral Survey Dataset

**Type:** schema

CSDM container for survey features and observations. This schema defines key metadata for a survey and uses the other components in this repository to implement details using standards based, flexible, extensible implementation patterns compatible with OGC API standards.

