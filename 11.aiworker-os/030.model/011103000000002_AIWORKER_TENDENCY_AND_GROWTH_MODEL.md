# ============================================================
# AIWORKER TENDENCY AND GROWTH MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- developer_company_style_policy
- company_ai_usage_tendency
- user_ai_usage_tendency
- worker_growth_profile
- worker_growth_event
- worker_capability_snapshot
- worker_domain_proficiency
- worker_role_proficiency

company_style_profile_enum:
- AGGRESSIVE
- BALANCED
- CONSERVATIVE

style_allowed_effect:
- proposal volume tendency
- degree of anticipation
- fallback richness
- escalation timing tendency
- tone sharpness or caution

style_forbidden_effect:
- rank ceiling override
- gate bypass
- approval bypass
- audit bypass
- destructive action unlock
- authority change unlock

growth_rule:
Growth changes proficiency, fit, recommendation quality, and recovery learning,
but growth does not silently rewrite core authority boundaries.

tendency_rule:
Company tendency and user tendency are worker-side operational inputs.
They remain canonical in AiworkerOS even when consumed elsewhere as summaries.

final_rule:
Tendency and growth are worker truth,
not temporary front-end preference caches.
