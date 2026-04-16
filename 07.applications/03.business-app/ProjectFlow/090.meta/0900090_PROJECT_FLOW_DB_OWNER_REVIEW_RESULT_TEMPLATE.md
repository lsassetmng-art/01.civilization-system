# ============================================================
# PROJECT FLOW DB OWNER REVIEW RESULT TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for recording the result of DB-owner review.

result_fields:
- result: pass_or_hold_or_partial
- review_date
- reviewer
- confirmed_schema_name
- confirmed_migration_order_summary
- confirmed_constraint_hardening_summary
- confirmed_trigger_rollout_summary
- confirmed_rls_direction_summary
- remaining_blockers
- next_actions
