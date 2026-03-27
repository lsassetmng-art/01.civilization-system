# ============================================================
# EVENT SUCCESS FAILURE RESULT MODEL
# ============================================================

status: canonical
layer: model
scope: event-and-ui-foundation
component: event-success-failure-result

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESULT FIELDS
# ============================================================

result_fields:
- event_id
- result_type
- success_probability_base
- modifier_inputs
- critical_success_supported
- partial_success_supported
- failure_supported
- critical_failure_supported
- result_effect_package
- history_summary_template


# ============================================================
# 2. RESULT TYPES
# ============================================================

result_types:
- deterministic
- weighted_random
- threshold_based
- choice_branch
- hybrid_choice_and_roll


# ============================================================
# 3. FINAL RULE
# ============================================================

Every event result must define
whether outcome comes from choice,
probability, thresholds, or mixed logic.
