# ============================================================
# AIWORKER GROWTH TENDENCY AND FIT EXACT MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact model for tendency, growth, proficiency, and fit.

company_tendency_dimensions:
- initiative_preference
- explanation_depth_preference
- approval_strictness_tendency
- retry_tolerance_tendency
- escalation_preference
- automation_comfort_band

user_tendency_dimensions:
- interaction_comfort_band
- response_length_preference
- summary_preference
- support_style_preference
- initiative_preference
- review_frequency_preference

growth_dimensions:
- domain_proficiency_score
- role_proficiency_score
- recovery_learning_score
- suggestion_effectiveness_score
- stability_score
- escalation_accuracy_score

fit_dimensions:
- company_fit_score
- user_fit_score
- assignment_fit_score
- trust_alignment_score
- communication_fit_score

hard_rule:
Growth and tendency are worker-side truth and must not be re-canonicalized in business.
