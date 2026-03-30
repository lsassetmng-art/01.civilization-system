# ============================================================
# PERSONA BUILDER TEST DEVELOPMENT
# ============================================================

status: canonical
scope: persona.builder.test.development
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the development-side testing strategy
for Persona Builder.


# TEST DOMAINS

## 1. Draft Tests
- create draft
- load draft
- section persistence
- change set persistence

## 2. Validation Tests
- required field failure
- canonical reference failure
- visual binding failure
- blocking issue propagation
- validation rerun

## 3. Approval Tests
- request creation
- missing validation block
- rejection persistence
- rework loop
- approval expiry

## 4. Publish Tests
- missing approval block
- invalid dependency block
- publish candidate creation
- handoff readiness state

## 5. Boundary Tests
- draft leak prevention
- invalid externalization prevention
- fail-closed on unresolved rights
- audit-failure stop behavior

## 6. Audit Tests
- audit write success
- audit write failure stops progression
- reconstruction of key actions


# FINAL DEFINITION

Builder testing must prioritize
boundary safety, fail-closed behavior,
and audit integrity over UI convenience.
