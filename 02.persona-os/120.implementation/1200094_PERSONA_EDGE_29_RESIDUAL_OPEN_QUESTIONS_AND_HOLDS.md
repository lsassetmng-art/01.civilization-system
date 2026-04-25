# PERSONA EDGE 29 RESIDUAL OPEN QUESTIONS AND HOLDS

status: post-exactness-consolidated
system: PersonaOS
layer: implementation
confirmed_at: 20260418_184215

purpose:
Captures the remaining residual questions after tiered exactness passes.

residual_questions:
- persona-state-apply
  - should snapshot trigger policy split by event class in a later pass?
- snapshot-issue
  - which release classes become strict fail-closed in production policy?
- snapshot-verify
  - what exact public-facing field names should represent malformed, revoked, and unknown-key outcomes?
- keys-current and keys-by-id
  - how should rotated historical verification continuity be surfaced in final public-safe schema?
- publish_apply
  - what final approved-input schema becomes canonical for production rollout?
- asset-publish-list
  - what final public-safe listing fields should be exposed?
- visual-upload and signed URL helper
  - what final delivery scope schema should be canonical for policy-limited distribution?
- civilization-event-dispatcher
  - what exact retry budget and retry exhaustion schema should be canonical?

global_hold_rule:
Residual questions are allowed to remain as design questions.
They do not imply implementation has begun.

