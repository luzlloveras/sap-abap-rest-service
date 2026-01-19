# ABAP REST Service

This repository contains a minimal ABAP REST service implemented with CDS
views and the RAP programming model. It focuses on how a service is structured
and exposed in ABAP, without assuming any specific business domain.

## Implementation overview
- Interface CDS view as the stable data contract for the service
- Projection view to shape the public API surface
- Managed behavior definitions for create/update/delete handling
- Service definition to expose the projection via REST/OData
- UI metadata annotations kept separate from the core data model

## HTTP handling
Request and response mapping is handled by the RAP runtime. The service relies
on standard RAP semantics for entity operations, status codes, and response
payload structure.

## Error and status handling
Authorization checks and locking are defined at the behavior layer and returned
through standard RAP error responses. Status management follows the framework
conventions to keep API behavior consistent.

## Notes
Execution requires an active ABAP system. The concrete business entity is not
verified, so the documentation remains implementation-focused and neutral.
