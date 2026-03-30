# ============================================================
# PERSONA BUILDER INTERFACE
# ============================================================

status: canonical
scope: persona.builder.interface
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical interface domains
for Persona Builder.

This document is interface-domain oriented,
not implementation-style specific.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Builder Interface must expose governed authoring functions
without collapsing truth, approval, and release boundaries.

Interface must be:

- explicit
- section-based
- auditable
- fail-closed on unresolved actions
- draft/public separated


# ============================================================
# PRIMARY INTERFACE DOMAINS
# ============================================================

Builder Interface must support at least:

1. Draft Workspace
2. Section Editor
3. Validation View
4. Approval View
5. Publish Preparation View
6. Audit View


# ============================================================
# 1. DRAFT WORKSPACE
# ============================================================

Draft Workspace must provide:

- draft list
- draft status
- target persona reference
- last edited time
- validation summary
- approval summary
- publish summary
- archive access where allowed


# ============================================================
# 2. SECTION EDITOR
# ============================================================

Section Editor must provide editable surfaces for:

- identity
- profile
- personality
- goal
- trait
- value
- preference
- cognition
- emotion
- behavior
- communication
- social
- capability
- knowledge
- schedule
- finance
- visual
- voice
- release preparation metadata where allowed

Section Editor must show:

- unsaved changes
- validation markers
- approval-sensitive sections
- material-change indicators


# ============================================================
# 3. VALIDATION VIEW
# ============================================================

Validation View must provide:

- latest validation status
- validation scope
- issue count
- blocking issue count
- warning list
- issue detail
- suggested fixes
- rerun validation action where allowed

Validation View must not imply approval.


# ============================================================
# 4. APPROVAL VIEW
# ============================================================

Approval View must provide:

- approval request status
- reviewer status
- decision history
- rejection reason
- rework instructions
- approval expiry if relevant

Approval View must not imply publish execution.


# ============================================================
# 5. PUBLISH PREPARATION VIEW
# ============================================================

Publish Preparation View must provide:

- publish candidate scope
- readiness state
- dependency summary
- public surface summary
- blocked reason where applicable
- handoff readiness

Publish Preparation View must distinguish between:

- prepared
- handed off
- externally granted

These are not the same.


# ============================================================
# 6. AUDIT VIEW
# ============================================================

Audit View must provide:

- creation history
- edit history
- validation history
- approval history
- publish preparation history
- archive history

Audit View is mandatory for governed Builder operations.


# ============================================================
# INTERFACE SAFETY RULE
# ============================================================

Interface must never present:

- raw draft as public truth
- validation pass as approval
- approval as external release grant
- publish preparation as marketplace truth

Boundary clarity is mandatory.


# ============================================================
# INTERFACE ACTIONS
# ============================================================

Minimum supported actions:

- create draft
- load draft
- edit section
- save change set
- run validation
- submit for approval
- apply rework
- prepare publish candidate
- archive draft
- inspect audit trail


# ============================================================
# ACCESS RULE
# ============================================================

Builder Interface actions must require explicit actor authority.

Sensitive actions include:

- approval submission
- rework acceptance
- publish preparation
- archive

No sensitive action may proceed
without attributable actor context.


# ============================================================
# FINAL DEFINITION
# ============================================================

Persona Builder Interface is the canonical governed interface surface
for draft authoring, validation inspection,
approval progression, publish preparation,
and audit-safe operation inside PersonaOS Builder space.
