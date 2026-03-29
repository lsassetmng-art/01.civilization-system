# ============================================================
# BUILDER SUMMARY PANEL MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: builder-summary-panel

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SUMMARY FIELDS
# ============================================================

required_summary_fields:
- selected_facility_count
- total_evaluated_build_cost
- total_expected_maintenance
- total_estimated_build_time
- total_review_required_count
- blocked_candidate_count
- replacement_candidate_count
- current_context_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Builder summary panel must help users
understand aggregate consequences
when reviewing multiple placement options.
