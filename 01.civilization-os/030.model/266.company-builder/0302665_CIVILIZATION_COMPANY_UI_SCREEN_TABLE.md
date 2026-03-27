# ============================================================
# CIVILIZATION COMPANY UI SCREEN TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI screen table
for company-related screens inside CivilizationOS.


# ============================================================
# 1. BUILDER SCREENS
# ============================================================

builder_screens:
- company_draft_list_screen
- company_draft_create_screen
- company_type_select_screen
- company_identity_screen
- company_location_premises_screen
- company_brand_screen
- company_type_specific_setup_screen
- company_validation_screen
- company_approval_request_screen
- company_publication_activation_screen


# ============================================================
# 2. MANAGEMENT SCREENS
# ============================================================

management_screens:
- company_dashboard_screen
- company_profile_screen
- company_site_list_screen
- company_site_detail_screen
- company_store_opening_screen
- company_product_portfolio_screen
- company_contracts_screen
- company_upload_review_status_screen
- company_publication_status_screen


# ============================================================
# 3. LIST / DISCOVERY SCREENS
# ============================================================

listing_screens:
- company_public_list_screen
- company_category_list_screen
- company_search_result_screen
- company_icon_grid_screen
- company_public_profile_screen


# ============================================================
# 4. ANALYTICS SCREENS
# ============================================================

analytics_screens:
- company_overview_analytics_screen
- company_sales_analytics_screen
- company_site_analytics_screen
- company_portfolio_analytics_screen
- company_growth_analytics_screen
- company_comparison_screen


# ============================================================
# 5. EVALUATION / LISTING READINESS SCREENS
# ============================================================

evaluation_screens:
- company_initial_evaluation_screen
- company_current_evaluation_screen
- company_public_rating_screen
- company_listing_readiness_screen
- company_listing_application_screen
- company_listed_status_screen


# ============================================================
# 6. SYSTEM COMPANY SCREENS
# ============================================================

system_company_screens:
- system_company_admin_dashboard
- system_re_property_mediation_screen
- system_re_tenant_management_screen
- system_opening_notification_screen
- system_upload_review_queue_screen
- system_marketplace_moderation_screen
- system_official_scout_screen


# ============================================================
# 7. FINAL SCREEN TABLE RULE
# ============================================================

This table defines the official screen families
for company-related UI inside CivilizationOS.

Core summary:

- builder screens are distinct
- management screens are distinct
- listing screens are distinct
- analytics screens are distinct
- evaluation/listing-readiness screens are distinct
