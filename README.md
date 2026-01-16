# SAP ABAP REST Service (Employees)

This service exposes employee master data from an ABAP system through a
lightweight REST/OData interface. It exists to show a clean, minimal path
from CDS data models to a consumable endpoint without extra framework noise.
Use it when a SAP backend needs to serve employee data to internal tools or
downstream services in a stable, predictable way.

## What this service demonstrates
- REST exposure in ABAP via CDS projection and service definition
- Request/response handling through managed RAP behaviors
- Error handling through standard RAP responses (authorization, locking)
- Separation of concerns across interface, projection, behavior, and service

This repository requires an active ABAP system to run. It focuses on the
service design and implementation rather than local execution.
