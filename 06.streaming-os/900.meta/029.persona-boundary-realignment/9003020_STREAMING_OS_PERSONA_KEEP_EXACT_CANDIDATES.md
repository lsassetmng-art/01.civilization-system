# ============================================================
# STREAMING OS PERSONA KEEP EXACT CANDIDATES
# ============================================================

status: canonical-keep-candidates
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Lists exact StreamingOS persona-adjacent candidates that may remain
if they stay reference-only.

keep_candidates:

candidate_01:
- surface: performer_persona_id
- reason: performer linkage reference is allowed
- keep_condition:
  - reference only
  - no persona mutable columns nearby
  - display must still use signed snapshot when externally shown

candidate_02:
- surface: target_persona_id
- reason: tip or target reference is allowed
- keep_condition:
  - reference only
  - no persona internal state derived as canonical from it

candidate_03:
- surface: STREAMING_PERSONA_ACCESS_REF_MODEL
- reason: access reference model is allowed
- keep_condition:
  - must not store persona mutable truth

candidate_04:
- surface: STREAMING_PERSONA_LICENSE_REF_MODEL
- reason: license reference is allowed
- keep_condition:
  - formal contract/ref only

candidate_05:
- surface: STREAMING_PERSONA_RELEASE_REF_MODEL
- reason: release reference is allowed
- keep_condition:
  - release ref only, no local rights canonical

candidate_06:
- surface: STREAMING_PERSONA_USAGE_BINDING_MODEL
- reason: usage binding ref is allowed
- keep_condition:
  - binding to persona_id / snapshot_id / permission result only

candidate_07:
- surface: PERSONA_USAGE_PERMISSION_CONSUME_RUNTIME
- reason: consume runtime is allowed
- keep_condition:
  - consume only
  - no local apply of persona internal state

candidate_08:
- surface: PERSONA_TO_STREAMING_USAGE_RESULT_SYNC_FLOW
- reason: result-event intake is allowed
- keep_condition:
  - result consume only
  - no local canonical mirror

candidate_09:
- surface: PERSONA_STREAMING_USAGE_BOUNDARY_ARCHITECTURE
- reason: architecture is aligned if reference-only
- keep_condition:
  - no direct mutation path
