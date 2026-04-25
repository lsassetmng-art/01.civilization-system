# PERSONA EDGE APPLY ORCHESTRATOR STAGE OWNER AND BOUNDARY MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113916

purpose:
Fixes which stage is owned by the orchestrator and which stage belongs to another PersonaOS boundary.

stage_owner_matrix:
- env
  - owner: orchestrator
  - boundary_type: execution setup
- auth
  - owner: orchestrator
  - boundary_type: access gate
- parse
  - owner: orchestrator
  - boundary_type: request intake
- control
  - owner: orchestrator
  - boundary_type: fail-closed operational gate
- idempotency
  - owner: orchestrator
  - boundary_type: replay guard
- registry
  - owner: orchestrator
  - boundary_type: contract lookup
- persona lookup
  - owner: orchestrator
  - boundary_type: subject resolution
- growth event ensure
  - owner: orchestrator
  - boundary_type: append-only event record preparation
- engine call
  - owner: state_apply or equivalent canonical apply boundary
  - boundary_type: canonical mutable truth mutation
- mark_processed
  - owner: orchestrator
  - boundary_type: apply completion evidence
- snapshot trigger
  - owner: snapshot issue boundary
  - called_by: orchestrator
- audit log
  - owner: audit support path
  - called_by: orchestrator
- response emit
  - owner: orchestrator
  - boundary_type: terminal response shaping

hard_boundary_rules:
- orchestrator is not canonical mutable truth owner
- state_apply is the canonical mutable truth owner
- snapshot issue is the immutable release artifact owner
- signature or revocation stays in trust-side boundary

