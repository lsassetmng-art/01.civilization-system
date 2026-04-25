# ============================================================
# CIVILIZATION DB REGISTRATION PREPARATION MASTER
# ============================================================

status: db-registration-preparation-master
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the master preparation model for database registration work
before actual DDL, seed, and sync implementation begins.

## 2. Scope

This document governs:

- DDL preparation
- enum and code master preparation
- seed and fixture preparation
- verify preparation
- rollback and repair posture
- Persona / ERP boundary preparation

## 3. Preparation Rule

No DB registration work may start without explicit preparation for:

- dependency order
- environment boundary
- rerun safety
- verification
- repair posture

## 4. Preparation Outputs

Required preparation outputs:

- DDL dependency order
- enum and code master registration order
- seed and fixture order
- Persona / ERP boundary rule
- Termux runbook preparation

## 5. DB Environment Boundary

Canonical environment split:

- Persona-side DB work uses PERSONA_DATABASE_URL
- ERP-side DB work or ERP sendout uses DATABASE_URL

## 6. Acceptance Checklist

- preparation scope fixed
- required outputs fixed
- environment split fixed

## Exact DB Registration Preparation Scope
## Exact DB Registration Preparation Scope

DB registration preparation must explicitly distinguish:

- DDL preparation
- enum and code master preparation
- seed and fixture preparation
- verify preparation
- rollback and repair preparation
- Persona / ERP boundary preparation
- sendout and sync preparation

These must not collapse into one ambiguous "DB setup" step.

## Exact Preparation Order

Recommended preparation order:

1. DB boundary confirmation
2. DDL dependency confirmation
3. enum and code master order confirmation
4. seed and fixture order confirmation
5. verify checklist confirmation
6. rollback and repair confirmation
7. Termux runbook confirmation
8. only then actual DB execution preparation

## Exact Environment Rule

Persona-side DB preparation is for PERSONA_DATABASE_URL.
ERP-side DB preparation and ERP sendout preparation are for DATABASE_URL.

## Exact DB Registration Preparation Dependencies
## Exact DB Registration Preparation Dependencies

DB registration preparation depends on all of the following being available:

- implementation-ready domain documents
- integrated master implementation
- master roadmap
- apply runner master
- verify runner master
- repair runner master
- report runner master
- freeze check runner master

This ensures DB preparation is attached to the same controlled execution model
as the implementation-ready document set.

## Exact Downstream Outputs

DB registration preparation must feed future work for:

- DDL execution blocks
- enum/code master registration blocks
- seed and fixture execution blocks
- DB verify execution blocks
- Persona-side DB execution plans
- ERP-side DB execution plans
- sendout and sync execution plans

## Execution Phase 1 DB Preparation Binding
## Execution Phase 1 DB Preparation Binding

DB registration preparation must support execution phase 1 with a narrowed subset only.

Phase 1 DB preparation should stay limited to:
- action scope preparation
- error code family preparation
- lifecycle/workflow status preparation
- outbox/inbox preparation
- audit trace preparation
- verify-view planning

Wide domain-table preparation remains outside phase 1.
