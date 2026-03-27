# ============================================================
# LIFE EVENT DECISION FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: life-event-ui
component: life-event-decision-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DECISION FLOW
# ============================================================

canonical_decision_flow:
- event_notice_opened
- event_overview_read
- requirements_checked
- optional_story_context_opened
- player_choice_selected
- optional_decoration_selected
- optional_item_set_selected
- preview_confirmed
- final_confirmation_executed
- result_presented
- history_saved


# ============================================================
# 2. DECISION NODE TYPES
# ============================================================

decision_node_types:
- acknowledge_only
- binary_choice
- multiple_choice
- branch_with_cost
- branch_with_item_requirement
- branch_with_decoration_requirement
- branch_with_role_restriction
- hidden_outcome_resolution


# ============================================================
# 3. INTERRUPTION RULES
# ============================================================

interruption_rules:
- player_may_exit_before_final_confirmation
- consumed_items_must_not_finalize_before_confirmation
- decoration_preview_must_not_commit_without_confirmation
- hidden_roll_resolution_runs_only_after_confirmation
- history_record_writes_only_after_result_generation


# ============================================================
# 4. FINAL RULE
# ============================================================

Decision flow must clearly distinguish
preview state,
commit state,
and remembered state.
