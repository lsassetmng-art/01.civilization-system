# ============================================================
# PERSONA BUILDER MODULE DEVELOPMENT
# ============================================================

status: canonical
scope: persona.builder.module.development
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the development-time module structure
for Persona Builder inside PersonaOS.


# DEVELOPMENT PRINCIPLE

Persona Builder development must preserve:

- draft truth separation
- validation / approval / publish gate separation
- runtime / rendering separation
- auditability
- fail-closed behavior


# RECOMMENDED MODULES

## builder-draft
Responsibilities:
- draft creation
- draft load
- section state persistence
- change set persistence

## builder-validation
Responsibilities:
- validation orchestration
- issue aggregation
- validation result persistence

## builder-approval
Responsibilities:
- approval request creation
- reviewer assignment
- approval decision persistence
- rework tracking

## builder-publish
Responsibilities:
- publish candidate preparation
- dependency summary preparation
- handoff preparation

## builder-visual-binding
Responsibilities:
- asset binding
- state / expression binding
- animation binding
- manifest candidate preparation

## builder-audit
Responsibilities:
- audit event writing
- audit bundle creation
- trace reconstruction support


# INTEGRATION RULE

Builder modules may integrate with:

- Persona Builder Runtime
- Builder models
- Validation / Approval / Publish services
- PersonaOS external-rights workflows by explicit handoff only

Builder modules must not directly mutate:

- final persona truth
- snapshot truth
- external-rights truth


# TESTING RULE

Each module should support:

- isolated unit tests
- boundary tests
- fail-closed path tests
- audit persistence tests
- invalidation path tests


# FINAL DEFINITION

Persona Builder development must proceed
as separated modules that preserve governance boundaries
and do not collapse draft, approval,
or release authority into one implementation block.
