# ============================================================
# CIVILIZATION PERSONA DB AND ERP DB BOUNDARY RULE
# ============================================================

status: db-boundary-rule
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical DB boundary rule between Persona-side work and ERP-side work.

## 2. Canonical Environment Split

- Persona-side DB work uses PERSONA_DATABASE_URL
- ERP-side DB work uses DATABASE_URL
- ERP sendout uses DATABASE_URL
- Mixed ambiguous direct-write flow is prohibited

## 3. Boundary Classes

Preparation must distinguish:

- Persona-only records
- ERP-only records
- sendout candidates
- sync-reference-only records
- prohibited direct-write crossings

## 4. Rule

A DB operation plan must declare its boundary class before execution.

## 5. Acceptance Checklist

- environment split fixed
- boundary classes fixed
- no-ambiguous-direct-write rule fixed

## Exact Persona ERP Boundary Matrix
## Exact Persona ERP Boundary Matrix

Boundary classes must explicitly distinguish:

- Persona-only canonical records
- ERP-only canonical records
- sendout candidates from Civilization / Persona side to ERP
- sync-reference-only records
- prohibited direct-write crossings

## Exact Environment Mapping

Use PERSONA_DATABASE_URL when:
- the target record is Persona-side canonical
- the work is preparation for Persona-side DB registration

Use DATABASE_URL when:
- the target record is ERP-side canonical
- the work is preparation for ERP-side DB registration
- the work is ERP sendout or ERP sync preparation

## Exact Prohibition

A single block must not ambiguously mix Persona canonical writes
and ERP canonical writes without explicitly separating phases.

## Exact Boundary Use In Future Execution Plans
## Exact Boundary Use In Future Execution Plans

Every future DB execution plan must declare one of the following up front:

- Persona-side registration plan using PERSONA_DATABASE_URL
- ERP-side registration plan using DATABASE_URL
- ERP sendout / sync preparation plan using DATABASE_URL

A plan that does not declare its boundary class is invalid.

## Exact Cross-Boundary Planning Rule

Cross-boundary flows must be described as:

- source side
- target side
- sendout or sync method
- idempotency posture
- verify posture

Ambiguous mixed write plans are prohibited.
