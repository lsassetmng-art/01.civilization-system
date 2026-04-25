# ============================================================
# AIWORKER REPLAY AND RESULT REDELIVERY BOUNDARY EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze replay and result-redelivery behavior at the AiworkerOS <-> BusinessOS boundary.

integration_principles:
- BusinessOS may resend request-side events
- AiworkerOS must treat replay explicitly, not implicitly
- equivalent replay may produce NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY
- incompatible replay must not silently remutate worker truth

business_side_replay_examples:
- upstream timeout caused resend
- outbox delivery uncertain on business side
- manual retry of same request lineage
- operational redelivery request after consumer outage

redelivery_boundary:
- prior successful apply may re-emit business-facing summary event
- redelivery preserves original business_request_id lineage
- redelivery must not invent a new canonical mutation outcome
- redelivery must preserve result_summary_code family unless explicit corrected-summary flow exists

mismatch_boundary:
- same business_request_id but incompatible normalized candidate is not auto-apply
- mismatch produces review or reject path
- business-facing event must indicate replay/mismatch result class via result_code

hard_rules:
- BusinessOS does not force remutation by repeating the same request
- AiworkerOS remains source of truth for replay decision after intake normalization
