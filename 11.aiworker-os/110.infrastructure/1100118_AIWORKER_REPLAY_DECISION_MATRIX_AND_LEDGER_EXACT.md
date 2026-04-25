# ============================================================
# AIWORKER REPLAY DECISION MATRIX AND LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the replay-decision matrix and ledger direction.

decision_matrix_axes:
- request_hash match
- target_truth_surface match
- controlled_function_code match
- requested_transition_code match
- normalized_candidate equivalence
- prior intake terminality
- prior canonical apply existence
- prior event emission existence

decision_matrix_examples:
- exact lineage match + prior applied + prior event emitted:
  decision:
  - NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY

- exact lineage match + prior applied + no delivery evidence:
  decision:
  - REDELIVER_RESULT_ONLY

- exact lineage match + no prior applied + prior intake terminal reject:
  decision:
  - APPLY_NEW or REQUIRE_REVIEW depending on policy

- request_hash match + candidate mismatch:
  decision:
  - REJECT_REPLAY_MISMATCH

- nonterminal intake exists:
  decision:
  - BLOCK_NONTERMINAL_INTAKE

replay_ledger_direction:
- optional normalized ledger name:
  - aiworker.replay_decision_log
- minimum fields:
  - replay_decision_log_id
  - request_hash
  - business_request_id
  - worker_id
  - target_truth_surface
  - controlled_function_code
  - replay_decision_code
  - prior_intake_id
  - prior_event_id
  - decision_reason_code
  - decided_at
  - decided_by

hard_rules:
- replay decisions must be auditable
- request_hash lineage remains stable key material
- replay ledger is evidence, not alternate worker truth
