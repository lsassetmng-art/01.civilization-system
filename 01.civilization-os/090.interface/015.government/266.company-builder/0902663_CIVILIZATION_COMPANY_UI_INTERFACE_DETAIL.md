# ============================================================
# CIVILIZATION COMPANY UI INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for company list/discovery,
analytics, evaluation, and listing-readiness
inside CivilizationOS.


# ============================================================
# 1. COMPANY LIST / DISCOVERY INTERFACE
# ============================================================

required_fields:
- company_ref
- visibility_action
- correlation_id

visibility_action examples:
- add_to_public_list
- add_to_category_list
- hide_from_public_list
- refresh_public_profile


# ============================================================
# 2. ANALYTICS INTERFACE
# ============================================================

required_fields:
- company_ref
- analytics_action
- correlation_id

analytics_action examples:
- refresh_overview_analytics
- refresh_sales_analytics
- refresh_site_analytics
- refresh_growth_analytics
- compare_companies


# ============================================================
# 3. EVALUATION INTERFACE
# ============================================================

required_fields:
- company_ref
- evaluation_action
- correlation_id

evaluation_action examples:
- create_initial_evaluation
- refresh_current_evaluation
- refresh_public_rating
- refresh_listing_readiness


# ============================================================
# 4. LISTING / IPO INTERFACE
# ============================================================

required_fields:
- company_ref
- listing_action
- correlation_id

listing_action examples:
- evaluate_listing_readiness
- submit_listing_application
- approve_listing
- reject_listing
- set_listed_status


# ============================================================
# 5. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 6. FINAL INTERFACE RULE
# ============================================================

Company UI interfaces in CivilizationOS must be:
- list-aware
- analytics-aware
- evaluation-aware
- listing-readiness-aware
