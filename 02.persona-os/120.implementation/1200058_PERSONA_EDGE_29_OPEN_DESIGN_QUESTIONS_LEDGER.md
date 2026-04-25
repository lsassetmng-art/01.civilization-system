# PERSONA EDGE 29 OPEN DESIGN QUESTIONS LEDGER

status: design-deepening-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_172646

purpose:
Captures the remaining high-value design questions that should be closed during targeted deepening.

tier_a_questions:
- persona-state-apply
  - should snapshot trigger remain universally best-effort, or split by event class?
  - should duplicate remain plain 409 only, or also surface explicit internal duplicate_noop family payload?
- snapshot-issue
  - which release classes are fail-closed on issue failure?
- snapshot-verify
  - what is the exact external shape for malformed, revoked, and unknown-key outcomes?
- key lifecycle
  - how are rotated but still verifiable keys exposed across keys-by-id and keys-current?

tier_b_questions:
- publish_apply
  - what exact approved input set is mandatory before apply succeeds?
- asset-publish-list
  - what listing fields are public-safe versus internal-only?
- approval-action
  - what decision states are canonical versus derived display states?

tier_c_questions:
- visual-upload
  - what exact output means uploaded_candidate versus released_artifact?
- signed URL helper
  - what exact authorization context is mandatory for delivery helper issuance?

tier_d_questions:
- civilization-event-dispatcher
  - what exact retry versus dead-notify split is canonical?
- external_dispatcher
  - which failures stay internal and which become outward-facing failure responses?
- event-validate
  - how fine-grained should validation code families be?

tier_e_questions:
- persona-event-history
  - what exact paging and visibility rules are allowed on the retrieval surface?

