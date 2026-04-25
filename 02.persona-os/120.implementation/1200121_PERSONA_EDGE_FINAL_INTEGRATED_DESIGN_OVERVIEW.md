# PERSONA EDGE FINAL INTEGRATED DESIGN OVERVIEW

status: final-design-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_195327

purpose:
Provides one final integrated design overview for all confirmed PersonaOS Edge Functions.

current_state:
- implementation_started: no
- db_implementation_started: no
- edge_function_implementation_started: no
- app_implementation_started: no

design_scope_completed:
- 29 confirmed existing Edge Functions cataloged
- cross-family freeze completed
- tiered exactness completed
- residual queue closed at policy level
- implementation-entry governance defined

core_principles:
1. edge label does not equal truth ownership
2. canonical mutable truth remains behind state_apply or equivalent canonical apply boundary
3. signed snapshot and event contract remain the primary external trust surfaces
4. work-state, candidate-state, and released-state remain distinct
5. approval, decision, apply, and listing remain distinct
6. verification, revocation, publication, and key retrieval remain distinct
7. producer, validate, dispatch, dead-notify, and external dispatch remain distinct

confirmed_families:
- lifecycle
  - persona-create
  - persona-event-history

- runtime_engine
  - persona-state-apply
  - sign-event

- runtime_visual
  - visual-job-create
  - visual-compose
  - visual-upload

- asset
  - persona-auto-generate-part
  - persona_build_manifest
  - persona_background_get_signed_urls

- approval_publish
  - approval-create
  - approval-action
  - approval-sla
  - asset-publish-request-create
  - asset-publish-request-decide
  - asset-publish-list
  - publish_apply

- security_snapshot
  - snapshot-issue
  - snapshot-revoke
  - snapshot-verify
  - revocation-list

- security_keys
  - keygen-once
  - keys-by-id
  - keys-current

- integration_civilization
  - civilization-event-dispatcher
  - civilization-event-producer
  - civilization-dead-notify
  - event-validate
  - external_dispatcher

final_reading_of_core_boundaries:
- persona-state-apply = runtime-engine orchestrator edge, not truth owner by label
- state_apply or apply_event_engine behind it = canonical mutable truth mutation boundary
- snapshot-issue = immutable release artifact issuance boundary
- snapshot-verify = trust verification boundary
- snapshot-revoke = invalidation boundary
- revocation-list = invalidation publication boundary
- sign-event = signing support boundary
- keys-current = active verification-safe key set publication
- keys-by-id = historical verification continuity lookup

external_surface_summary:
allowed:
- signed snapshot
- verification result
- revocation publication
- approved release surfaces
- controlled lifecycle and operational surfaces
- verification-safe key retrieval
- authorized signed delivery helper surfaces

forbidden:
- direct mutable truth read
- direct mutable truth update outside internal canonical boundary
- unsigned artifact treated as trusted artifact
- work-state or candidate-state treated as released-state
- private signing material exposure

conclusion:
PersonaOS Edge design is now broad enough and deep enough for targeted future follow-up
without reopening family-wide design by default.

