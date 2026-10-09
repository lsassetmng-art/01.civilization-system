# CIVILIZATION DB OWNERSHIP AND ENVIRONMENT BOUNDARY RULE

status: canonical
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848009
owner: CivilizationOS
language: English

## 1. Purpose

Defines the database connection and schema boundary for canonical records
owned directly by CivilizationOS.

This rule preserves the established shared PostgreSQL topology and does not
introduce a dedicated CivilizationOS database connection.

## 2. Established Database Connection Boundary

The established connection mapping is:

- Persona-side canonical DB work uses PERSONA_DATABASE_URL
- CivilizationOS-owned canonical DB work uses PERSONA_DATABASE_URL
- ERP-side canonical DB work uses DATABASE_URL
- ERP sendout uses DATABASE_URL

CivilizationOS must not introduce a separate CIVILIZATION_DATABASE_URL
connection contract.

## 3. CivilizationOS Schema Boundary

CivilizationOS-owned canonical persistence uses the existing:

- connection: PERSONA_DATABASE_URL
- schema: civilization

The civilization schema already exists in the shared PostgreSQL database.

R13 must not create a new civilization_os schema.

The public schema is not an application persistence target.

## 4. Ownership

Sharing PERSONA_DATABASE_URL does not transfer canonical ownership.

- PersonaOS-owned records remain PersonaOS-owned.
- CivilizationOS-owned records remain CivilizationOS-owned.
- ERP-owned records remain ERP-owned.

Canonical ownership is determined by the owning OS contract, model and schema,
not by connection-variable reuse.

## 5. ERP Separation

CivilizationOS-owned persistence must not use DATABASE_URL.

DATABASE_URL remains the ERP-side connection.

If PERSONA_DATABASE_URL is missing or unavailable, CivilizationOS DB work must
stop rather than redirect to DATABASE_URL.

## 6. R13 Physical Binding

R13 city-local active truth uses:

- PERSONA_DATABASE_URL
- existing civilization schema

Target relations:

- civilization.territory_record
- civilization.facility_registry
- civilization.district_registry
- civilization.active_facility_placement

This rule does not authorize DDL execution by itself.

## 7. Existing Schema Reuse Rule

R13 must reuse the existing civilization schema.

R13 must not:

- create civilization_os
- create another OS-specific schema for the same ownership domain
- use public
- redirect to DATABASE_URL
- infer another connection URL

Schema creation is outside the R13 apply operation.

## 8. Cross-Boundary Rule

Cross-boundary references do not transfer ownership.

Persona references consumed by CivilizationOS remain Persona-owned.

ERP references consumed by CivilizationOS remain ERP-owned.

CivilizationOS persists only CivilizationOS-owned facts authorized by its
canonical models.

## 9. Registration Plan Requirement

A CivilizationOS DB execution plan must declare:

- canonical owner: CivilizationOS
- connection: PERSONA_DATABASE_URL
- existing schema: civilization
- target relation
- source authority
- transaction boundary
- verification posture
- rollback posture

## 10. Phase Rule

This correction does not widen DB execution scope.

R13 DDL execution remains subject to its separate explicit apply gate.

## 11. Acceptance

Accepted when:

- CivilizationOS uses PERSONA_DATABASE_URL
- existing civilization schema is reused
- no CIVILIZATION_DATABASE_URL contract remains
- no civilization_os schema contract remains
- DATABASE_URL remains ERP-side
- public remains unused for application persistence
- R13 DDL does not create or drop the civilization schema
