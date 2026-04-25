# ============================================================
# AIWORKER ENUM CODE AND ID POLICY EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze code systems and identifier policy for initial implementation.

identifier_policy:
- all primary keys use *_id
- external business correlation uses business_request_id
- worker business-facing stable reference uses worker_code
- code fields end with _code
- timestamps use *_at or effective_from / effective_to

required_code_families:
- rank_code
- domain_code
- role_code
- mode_code
- company_style_profile_code
- assignment_state_code
- availability_state_code
- queue_family_code
- queue_priority_band_code
- capability_band_code
- score_band_code
- privileged_context_code
- handling_policy_code
- exception_state_code
- gate_code
- lane_code
- output_policy_code
- summary_code
- change_reason_code

company_style_profile_code_values:
- AGGRESSIVE
- BALANCED
- CONSERVATIVE

hard_rules:
- rank code list reuses already-established official rank names
- code families are additive
- style codes never represent authority levels
