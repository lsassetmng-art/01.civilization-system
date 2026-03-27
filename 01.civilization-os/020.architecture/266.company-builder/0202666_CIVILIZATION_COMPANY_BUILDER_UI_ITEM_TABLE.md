# ============================================================
# CIVILIZATION COMPANY BUILDER UI ITEM TABLE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI item table
for company builder inside CivilizationOS.

This table defines:
- common UI items
- type-specific UI items
- upload/moderation UI requirements
- contract/portfolio UI requirements


# ============================================================
# 1. COMMON UI ITEM TABLE
# ============================================================

All company types should have these common UI items.

common_identity_items:
- company_name
- short_name
- company_code
- company_type
- legal_category
- nation_code
- registered_premises
- operating_premises
- company_summary
- company_icon
- brand_image

common_state_items:
- draft_status
- validation_status
- approval_status
- publication_status
- activation_status
- created_by
- created_at
- updated_at

common_sales_items:
- direct_sale_enabled
- marketplace_sale_enabled
- category_catalog_sale_enabled


# ============================================================
# 2. COMMON BUILDER SECTIONS
# ============================================================

Minimum common sections:
- identity
- legal_category
- location_and_premises
- brand_and_icon
- publication
- validation
- approval
- activation


# ============================================================
# 3. UPLOAD MODERATION UI ITEMS
# ============================================================

For upload-capable company types,
the builder UI must include:

pre_upload_notice_items:
- prohibited_item_notice_display
- prohibited_conduct_notice_display
- rights_infringement_notice_display
- explicit_agreement_checkbox
- review_time_notice_display

review_time_notice_summary:
- review_generally_expected_within_7_days
- review_may_take_longer_if_needed

post_upload_review_items:
- upload_status
- ai_review_status
- ai_risk_level
- human_review_status
- publication_decision
- review_reason_summary

Upload-capable company types must not bypass these UI items.


# ============================================================
# 4. TYPE-SPECIFIC UI ITEM TABLE
# ============================================================

## 4.1 ARCHITECTURAL DESIGN COMPANY

tabs:
- design_catalog
- compatibility
- bonus_settings
- pricing

items:
- design_name
- supported_facility_type
- design_theme
- preview_image
- design_description
- bonus_stat_configuration
- price
- publication_status


## 4.2 INTERIOR COMPANY

tabs:
- interior_catalog
- exterior_catalog
- bonus_settings
- pricing

items:
- product_name
- interior_or_exterior_type
- supported_housing_type
- preview_image
- bonus_stat_configuration
- price
- publication_status


## 4.3 FASHION COMPANY

tabs:
- costume_catalog
- accessory_catalog
- persona_compatibility
- bonus_settings
- pricing

items:
- costume_name
- accessory_name
- persona_compatibility_profile
- rarity
- preview_image
- bonus_stat_configuration
- price
- publication_status


## 4.4 RETAIL COMPANY

tabs:
- supplier_contracts
- distribution_rights
- product_portfolio
- storefront

items:
- supplier_list
- contract_type
- exclusivity_mode
- resale_or_agency_mode
- product_portfolio_summary
- sales_channel_settings
- revenue_split_summary
- storefront_display_settings


## 4.5 INVESTMENT COMPANY

tabs:
- fund_builder
- investment_scope
- solicitation
- portfolio

items:
- fund_name
- fund_type
- target_instruments
- investment_policy
- risk_class
- solicitation_terms
- minimum_commitment_amount
- fee_summary
- publication_status


## 4.6 EDUCATION COMPANY

tabs:
- text_materials
- programs
- age_bands
- curriculum

items:
- material_name
- material_type
- age_band
- subject_code
- learning_stage
- program_name
- enrollment_condition
- price
- publication_status


## 4.7 GAME COMPANY

tabs:
- game_upload
- runtime_origin
- release
- store_publishing

items:
- game_name
- gameos_link_mode
- runtime_target
- version
- thumbnail
- screenshots
- description
- price
- sales_channel_settings
- publication_status


## 4.8 SOFTWARE COMPANY

tabs:
- app_upload
- runtime_origin
- businessos_link
- store_publishing

items:
- app_name
- businessos_link_mode
- integration_mode
- runtime_target
- version
- description
- thumbnail
- price
- publication_status


## 4.9 CULTURE_ARTS COMPANY

tabs:
- content_import
- content_catalog
- exhibition_screening
- official_scout

items:
- content_type
- pdf_import
- jpeg_import
- title
- author_name
- synopsis_or_description
- thumbnail
- publication_scope
- exhibition_settings
- screening_settings
- scout_contact_inbox
- official_adoption_status


## 4.10 RELIGIOUS CORPORATION

tabs:
- doctrine
- recruitment
- donation
- ritual_event
- facility_relation

items:
- doctrine_name
- doctrine_summary
- recruitment_message
- recruitment_enabled
- donation_enabled
- ritual_event_settings
- religious_facility_relation
- publication_status


# ============================================================
# 5. FINAL UI ITEM TABLE RULE
# ============================================================

Company builder UI item tables in CivilizationOS must be:
- common-section-aware
- company-type-aware
- upload-aware
- contract-aware
- scout-aware where relevant
