# ============================================================
# AIWORKER REPLAY DECISION INPUT OUTPUT INTERFACE EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the standardized input and output contract for replay-decision handling.

replay_decision_input_fields:
- p_request_hash
- p_business_request_id
- p_worker_id
- p_target_truth_surface
- p_controlled_function_code
- p_requested_transition_code
- p_payload_version
- p_payload_ref
- p_requested_at
- p_actor_type
- p_actor_id

replay_decision_output_fields:
- o_replay_decision_code
- o_result_code
- o_existing_intake_id
- o_existing_related_entity_id
- o_existing_event_id
- o_redelivery_allowed_flag
- o_review_required_flag
- o_decided_at

replay_decision_codes:
- APPLY_NEW
- NOOP_ALREADY_APPLIED
- REDELIVER_RESULT_ONLY
- REJECT_REPLAY_MISMATCH
- REQUIRE_REVIEW
- BLOCK_NONTERMINAL_INTAKE

error_codes:
- ERR_REPLAY_LINEAGE_NOT_FOUND
- ERR_REPLAY_EQUIVALENCE_UNCLEAR
- ERR_REPLAY_MISMATCH
- ERR_NONTERMINAL_INTAKE_EXISTS
- ERR_REDELIVERY_NOT_ALLOWED
- ERR_INTERNAL_REPLAY_CHECK_FAILED

hard_rules:
- replay decision output is standardized
- replay decision must be recordable for audit
- replay decision must not itself mutate canonical worker truth unless APPLY_NEW path continues into controlled function flow
