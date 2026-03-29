# ============================================================
# INSURANCE UI MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: insurance-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- insurance_home
- policy_list
- policy_detail
- compare_policies
- application_flow
- claim_or_support_surface
- policy_history
- insurance_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

insurance_ui_fields:
- insurer_id
- user_id
- eligible_policy_set
- active_policy_set
- premium_summary
- coverage_summary
- claim_permission_profile
- nation_regulation_profile
- pending_application_state
- institution_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

insurance_ui_actions:
- browse_policies
- compare_policies
- open_policy_detail
- apply_for_policy
- review_active_policies
- review_policy_history
- open_claim_or_support
- review_notices


# ============================================================
# 4. FINAL RULE
# ============================================================

Insurance UI must prioritize
coverage truth,
premium clarity,
and claim visibility.
