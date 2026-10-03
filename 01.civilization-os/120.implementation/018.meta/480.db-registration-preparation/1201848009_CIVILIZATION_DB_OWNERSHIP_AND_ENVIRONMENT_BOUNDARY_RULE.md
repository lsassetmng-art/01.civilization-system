# CIVILIZATION DB OWNERSHIP AND ENVIRONMENT BOUNDARY RULE

status: db-boundary-rule
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the database boundary for canonical records owned directly by CivilizationOS.

This document complements the existing Persona DB and ERP DB boundary rule.
It does not replace the Persona/ERP split.

## 2. Existing Boundaries Preserved

Persona-side canonical work continues to use:

- PERSONA_DATABASE_URL

ERP-side canonical work and ERP sendout continue to use:

- DATABASE_URL

The existing prohibition on ambiguous cross-boundary direct writes remains in force.

## 3. CivilizationOS Boundary

CivilizationOS-owned canonical domain persistence uses:

- CIVILIZATION_DATABASE_URL

Canonical CivilizationOS schema:

- civilization_os

Use of public schema is prohibited.

## 4. No Fallback Rule

A CivilizationOS-owned canonical operation must not fall back to:

- PERSONA_DATABASE_URL
- DATABASE_URL

A missing CIVILIZATION_DATABASE_URL is a configuration failure.

It must not be repaired by writing CivilizationOS-owned truth into Persona or ERP storage.

## 5. Boundary Classification

Future DB execution plans must declare the canonical owner before execution.

Valid owner classes include:

- Persona-owned canonical record
- ERP-owned canonical record
- CivilizationOS-owned canonical record
- sendout candidate
- sync-reference-only record
- prohibited direct-write crossing

## 6. CivilizationOS Registration Plan

A CivilizationOS-owned DB execution plan must declare:

- source authority
- target CivilizationOS relation
- CIVILIZATION_DATABASE_URL
- civilization_os schema
- transaction boundary
- idempotency posture where mutation is retryable
- verification posture
- rollback posture

## 7. Cross-Boundary Rule

Cross-boundary data flow does not transfer canonical ownership by itself.

A Persona reference consumed by CivilizationOS remains Persona-owned.

An ERP reference consumed by CivilizationOS remains ERP-owned.

CivilizationOS must persist only the CivilizationOS-owned canonical facts authorized by its models.

## 8. R13 Binding

R13 city-local active truth uses the CivilizationOS-owned boundary for:

- territory_record
- facility_registry
- district_registry
- active_facility_placement

This rule does not authorize DDL execution.

## 9. Phase 1 Rule

Defining the CivilizationOS boundary does not widen execution phase 1 DB preparation.

R13 domain persistence remains outside the current narrow phase 1 DB subset.

## 10. Acceptance

Accepted when:

- Persona environment remains PERSONA_DATABASE_URL
- ERP environment remains DATABASE_URL
- CivilizationOS environment is CIVILIZATION_DATABASE_URL
- CivilizationOS schema is civilization_os
- public schema is prohibited
- fallback across owners is prohibited
- phase 1 remains unchanged
