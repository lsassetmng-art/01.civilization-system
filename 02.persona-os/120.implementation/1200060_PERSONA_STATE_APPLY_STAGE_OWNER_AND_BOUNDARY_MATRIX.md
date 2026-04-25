# PERSONA STATE APPLY STAGE OWNER AND BOUNDARY MATRIX

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes exact stage ownership for persona-state-apply.

stage_matrix:
- env
  - owner: persona-state-apply orchestrator
  - role: execution setup
- auth
  - owner: persona-state-apply orchestrator
  - role: internal request gate
- parse
  - owner: persona-state-apply orchestrator
  - role: request intake and normalization
- control
  - owner: persona-state-apply orchestrator
  - role: fail-closed operational gate
- idempotency
  - owner: persona-state-apply orchestrator
  - role: duplicate and replay guard
- registry
  - owner: persona-state-apply orchestrator
  - role: event contract lookup
- persona lookup
  - owner: persona-state-apply orchestrator
  - role: subject resolution
- growth event ensure
  - owner: persona-state-apply orchestrator
  - role: append-only event record preparation
- engine call
  - owner: state_apply or apply_event_engine boundary
  - role: canonical mutable truth mutation
- mark processed
  - owner: persona-state-apply orchestrator
  - role: decisive completion evidence
- snapshot trigger
  - owner: snapshot issue boundary
  - called_by: persona-state-apply orchestrator
- audit log
  - owner: audit support path
  - called_by: persona-state-apply orchestrator
- response emit
  - owner: persona-state-apply orchestrator
  - role: terminal response shaping

hard_boundary_rules:
- persona-state-apply is not the mutable truth owner by label alone
- apply_event_engine or equivalent boundary owns truth mutation
- snapshot-issue owns immutable release artifact issuance
- signing support remains trust-side support, not truth mutation
- audit evidence support remains evidence path, not truth mutation

