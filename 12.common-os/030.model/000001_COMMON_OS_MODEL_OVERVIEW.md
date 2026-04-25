# COMMON OS MODEL OVERVIEW

status: canonical
layer: model

## Purpose
This layer defines the metadata model and schema direction for CommonOS.

## Topics
- app_common schema direction
- metadata identity and versioning
- component variants
- token and theme model
- locale and template model

## Application common component model subsystem overview

### Position
The architecture layer defines what the application common component families are. The model layer defines how their metadata is represented canonically.

### Scope
- component family identity
- catalog structure
- variant structure
- promotion and lifecycle status
- origin evidence and reflection references

### Boundary
These are metadata models only. They do not store domain business truth, secrets, pricing logic, entitlement logic, access logic, or authoritative domain outbox truth.

## app_common reviewed canonical DDL subsystem overview

### Position
The architecture layer defines what CommonOS may own. The model layer defines how app_common metadata is represented. The reviewed canonical DDL subsystem provides the first formal PostgreSQL DDL for Tier1 app_common metadata tables.

### Scope
- shared mutable metadata only
- reviewed canonical table candidates
- common columns, enums, and foreign keys
- Tier2 / Tier3 rollout plan

### Boundary
The DDL excludes domain business canon, pricing logic, entitlement logic, access logic, secrets, ERP voucher truth, domain outbox truth, and other authoritative domain data.

## app_common RLS and published-read SQL draft subsystem overview

### Position
The model layer now includes actual SQL draft assets for app_common protection and publication patterns.

### Scope
- base-table RLS posture
- internal reviewer / publisher role handling
- public published-read views
- role mapping draft
- execution caveats for real DB adoption

### Boundary
These SQL drafts are canonical design assets. They are not the same thing as approved production execution.

## app_common execution-ready migration bundle subsystem overview

### Position
The model layer now includes a bundle-level SQL draft that sequences Tier1 DDL, RLS draft, and published read-view draft in one migration package.

### Scope
- ordered migration bundle
- prerequisite file chaining
- execution caveats
- design-level execution readiness
