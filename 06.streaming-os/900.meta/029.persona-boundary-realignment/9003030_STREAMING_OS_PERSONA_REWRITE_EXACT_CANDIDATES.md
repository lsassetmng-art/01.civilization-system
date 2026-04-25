# ============================================================
# STREAMING OS PERSONA REWRITE EXACT CANDIDATES
# ============================================================

status: canonical-rewrite-candidates
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Lists exact StreamingOS persona-adjacent candidates that must be rewritten.

rewrite_candidates:

candidate_01:
- surface: STREAMING_PERSONA_GROWTH_REF_MODEL
- exact_risk_fields:
  - last_growth_request_id
  - last_growth_event_type
  - last_growth_sent_at
  - last_growth_result_status
  - last_growth_applied_at
- rewrite_to:
  - request_event_ref
  - result_event_ref
  - applied_snapshot_id
  - local non-canonical consume log

candidate_02:
- surface: STREAMING_PERSONA_TRUST_REF_MODEL
- exact_risk_fields:
  - trust_score
  - trust_level
  - safety_score
  - stability_score
  - consistency_score
  - last_evaluated_at
- rewrite_to:
  - trust_result_event_ref
  - signed_snapshot_ref
  - local display projection only

candidate_03:
- surface: STREAMING_TO_PERSONA_GROWTH_SYNC_ARCHITECTURE
- rewrite_to:
  - request event outbox
  - PersonaOS apply
  - result event inbox
- forbidden:
  - local sync-then-backwrite shape

candidate_04:
- surface: STREAMING_TO_PERSONA_GROWTH_REQUEST_MODEL
- rewrite_to:
  - request payload model only
- forbidden:
  - local growth truth carrier

candidate_05:
- surface: STREAMING_TO_PERSONA_GROWTH_REQUEST_RUNTIME
- rewrite_to:
  - dispatch runtime only
- forbidden:
  - local growth apply runtime

candidate_06:
- surface: STREAMING_TO_PERSONA_GROWTH_REQUEST_FLOW
- rewrite_to:
  - request -> apply -> result consume
- forbidden:
  - direct mutation shortcut

candidate_07:
- surface: PERSONA_TO_STREAMING_TRUST_SYNC_FLOW
- rewrite_to:
  - result flow only
- forbidden:
  - trust truth replication

candidate_08:
- surface: PERSONA_TRUST_SYNC_CONSUME_RUNTIME
- rewrite_to:
  - consume runtime + local derived display cache
- forbidden:
  - trust canonical persistence

candidate_09:
- surface: STREAMING_PERSONA_PERFORMER_BINDING_MODEL
- exact_risk_wording:
  - persona binding truth model
  - truth belongs to StreamingOS participation-safety domain
- rewrite_to:
  - performer assignment ref model
  - persona_id
  - snapshot_id
  - applied_snapshot_id
- forbidden:
  - persona internal truth ownership wording

candidate_10:
- surface: STREAMING_OS_PERSONA_REACTION_INTEGRATION
- exact_risk_wording:
  - reading Persona-linked personality context
  - supporting emotional score shaping
  - preserving Persona reference in auto tipping profiles or contexts
- rewrite_to:
  - signed snapshot / formal Persona result consume
  - streaming-local reaction state only

candidate_11:
- surface: STREAMING_OS_AI_EMOTIONAL_AUTO_TIPPING_ARCHITECTURE
- exact_risk_field:
  - persona_profile_reference
- rewrite_to:
  - signed_snapshot_ref or result_event_ref only
  - streaming-local intensities remain local-derived
