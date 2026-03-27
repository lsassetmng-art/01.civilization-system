# ============================================================
# JOB AUTOMATION AND AI ASSIST MODEL
# ============================================================

status: canonical
layer: model
scope: work-ui-foundation
component: job-automation-and-ai-assist

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AI ASSIST FUNCTIONS
# ============================================================

ai_assist_functions:
- summarize_current_state
- propose_next_action
- warn_about_risk
- suggest_resource_reallocation
- suggest_personnel_reallocation
- draft_schedule_change
- draft_response_to_incident
- explain_tradeoff
- automate_low_risk_action
- prepare_review_report


# ============================================================
# 2. AUTOMATION LEVELS
# ============================================================

automation_levels:
- none
- suggestion_only
- approval_required
- low_risk_auto_execute
- broad_auto_execute_except_restricted


# ============================================================
# 3. RESTRICTED ACTION CLASSES
# ============================================================

restricted_action_classes:
- firing_or_removal
- military_escalation
- doctrine_sensitive_decision
- budget_reallocation_above_threshold
- appointment_or_promotion
- life_or_death_triage_override
- regime_sensitive_order
- law_or_rule_override


# ============================================================
# 4. AI RULES
# ============================================================

ai_rules:
- ai_must_not_execute_restricted_action_classes_without explicit permission
- ai_suggestions_must_show rationale and tradeoff
- ai_auto_execution_must_write history record
- country_rules_may narrow or widen automation ceilings
- emergency_mode_may temporarily widen assist scope
- player_visibility_of_ai_actions_must remain explicit


# ============================================================
# 5. FINAL RULE
# ============================================================

AI assist must reduce friction
without hiding responsibility.
