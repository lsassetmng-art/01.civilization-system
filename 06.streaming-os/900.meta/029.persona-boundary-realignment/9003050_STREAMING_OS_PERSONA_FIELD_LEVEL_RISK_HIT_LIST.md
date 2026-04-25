# ============================================================
# STREAMING OS PERSONA FIELD LEVEL RISK HIT LIST
# ============================================================

status: canonical-hit-list
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Captures exact known field-level hits from the integrated StreamingOS design
that need keep / rewrite / abolish judgment.

known_hits:

keep_if_reference_only:
- performer_persona_id
- target_persona_id
- persona_id

rewrite_hits:
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- last_growth_request_id
- last_growth_event_type
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at
- persona_profile_reference

local_derived_allowed_if_noncanonical:
- video_impression_intensity
- video_empathy_intensity
- video_support_intention
- broadcaster_impression_intensity
- broadcaster_empathy_intensity
- broadcaster_support_intention
- auto_tipping_total_limit
- auto_tipping_per_stream_limit
- auto_tipping_per_day_limit
- current_auto_tipping_total_amount
- current_auto_tipping_stream_amount
- current_auto_tipping_day_amount
- available_national_currency_balance
- minor_equivalent_flag
- auto_tipping_stop_flag

rule:
Local streaming-derived intensity or limit fields may remain only if they are:
- Streaming-local
- non-canonical for persona internals
- rebuildable or app-local operational state
