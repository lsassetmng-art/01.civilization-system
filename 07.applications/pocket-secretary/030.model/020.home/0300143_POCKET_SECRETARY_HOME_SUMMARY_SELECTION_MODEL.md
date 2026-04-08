# ============================================================
# POCKET SECRETARY HOME SUMMARY SELECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents scoring and suppression state for dominant home summary selection.

fields:
- summary_selection_id
- user_id
- candidate_type
- candidate_score
- candidate_due_at
- candidate_updated_at
- recently_shown_flag
- quiet_hours_suppressed_flag
- created_at
- updated_at

candidate_type may include:
- upcoming_schedule
- due_today_todo
- important_notification
- unresolved_travel_expense
- general_guidance

rules:
- only one dominant summary should be chosen
- score and actual source remain distinguishable
- suppression does not delete the underlying source state
