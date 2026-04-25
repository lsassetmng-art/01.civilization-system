# ============================================================
# CIVILIZATION EXECUTION PHASE 1 DB PREPARATION SCOPE
# ============================================================

status: execution-phase-roadmap
layer: implementation
domain: 018.meta
subdomain: 490.execution-phase-roadmap
document_id: 1201849002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the DB preparation subset required for execution phase 1.

## 2. Phase 1 DB Goal

Prepare only the DB elements required by the common implementation foundation.

## 3. Included DB Preparation Scope

Recommended phase 1 DB preparation scope:

- action_scope_master preparation
- error code family preparation
- core lifecycle/workflow status preparation
- outbox table preparation
- inbox table preparation
- audit trace table preparation
- verify-view planning for the above

## 4. Excluded DB Preparation Scope

Do not include yet:

- government builder tables
- market transaction tables
- settlement tables
- runtime queue tables
- law / war / education / career tables
- Persona-side transport result storage beyond planning level

## 5. Environment Boundary

Phase 1 DB preparation must still declare boundary class.

Recommended initial bias:
- Persona-side planning only when the target is truly Persona-side canonical
- otherwise keep this phase at Civilization-side execution-prep scope

## 6. DB Preparation Order

Recommended phase 1 order:

1. enum and status dependency confirmation
2. action scope preparation
3. error code family preparation
4. outbox/inbox preparation
5. audit trace preparation
6. verify-view planning

## 7. Acceptance Checklist

- phase 1 DB subset fixed
- excluded DB scope fixed
- preparation order fixed

## Phase 1 DB Narrow-First Rule
## Phase 1 DB Narrow-First Rule

Phase 1 DB preparation must remain narrower than full common-domain execution.

If a DB preparation item is not required by:
- action scope
- error code family
- outbox/inbox
- audit
- verify-view planning

then it should be deferred out of phase 1.

## Phase 1 DB Block Dependency
## Phase 1 DB Block Dependency

Phase 1 DB preparation scope must be implemented only through the
phase 1 DB block preparation model.

This ensures:
- narrow-first DB behavior
- explicit environment declaration
- no silent phase expansion

## Phase 1 DB Block Naming Dependency
## Phase 1 DB Block Naming Dependency

Any future phase 1 DB preparation block must obey:

- execution block naming convention
- output directory rule
- report/manifest naming rule
- reserved phase 1 slot plan

DB preparation blocks may not bypass these controls.

## Phase 1 Environment Declaration Dependency
## Phase 1 Environment Declaration Dependency

Any future phase 1 DB-related authoring must pass the environment declaration checklist first.

Ambiguous DB boundary posture is a no-go condition.

## Phase 1 Reserved DB Slot Dependency
## Phase 1 Reserved DB Slot Dependency

Phase 1 DB preparation scope must map only to the reserved DBPREP slots.

Unreserved DB-related authoring is out of scope for phase 1.

## Phase 1 DB Integrated Status Dependency
## Phase 1 DB Integrated Status Dependency

Phase 1 DB preparation scope should be interpreted together with
the integrated phase 1 status so that planned DB subset is not confused with executed DB work.

## Phase 1 Stop Rule Dependency
## Phase 1 Stop Rule Dependency

Phase 1 DB-related authoring must obey the phase 1 stop rule.

Any DB-scope widening is a stop condition.
