# ============================================================
# AIWORKER REPLAY AND IDEMPOTENCY DECISION FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the canonical replay and idempotency decision flow.

idempotency_key_direction:
- request_hash
- business_request_id when present
- target_truth_surface
- controlled_function_code
- requested_transition_code
- worker_id or target entity key
- payload_version

decision_flow:
1. receive replay candidate
2. resolve request lineage by request_hash
3. locate prior intake and result state
4. compare target truth surface and transition intent
5. compare normalized candidate material
6. decide one of:
   - APPLY_NEW
   - NOOP_ALREADY_APPLIED
   - REDELIVER_RESULT_ONLY
   - REJECT_REPLAY_MISMATCH
   - REQUIRE_REVIEW
   - BLOCK_NONTERMINAL_INTAKE
7. write decision result code
8. emit redelivery only when allowed
9. never duplicate canonical mutation after successful prior apply

terminal_replay_outcomes:
- APPLY_NEW
  used_when:
  - no prior successful canonical apply exists

- NOOP_ALREADY_APPLIED
  used_when:
  - same idempotency lineage already applied
  - no new canonical mutation is required

- REDELIVER_RESULT_ONLY
  used_when:
  - prior canonical mutation already applied
  - result needs to be re-emitted or delivery retried

- REJECT_REPLAY_MISMATCH
  used_when:
  - request_hash lineage matches but target or normalized candidate differs incompatibly

- REQUIRE_REVIEW
  used_when:
  - replay candidate cannot be safely auto-resolved

- BLOCK_NONTERMINAL_INTAKE
  used_when:
  - earlier intake remains in nonterminal processing state

hard_rules:
- replay never bypasses gate
- replay never bypasses approval
- replay never bypasses audit
- redelivery without remutation is allowed only after safe equivalence check
