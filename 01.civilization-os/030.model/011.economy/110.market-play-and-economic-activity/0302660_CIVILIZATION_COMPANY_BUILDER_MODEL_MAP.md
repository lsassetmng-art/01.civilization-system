# ============================================================
# CIVILIZATION COMPANY BUILDER MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for company builder
inside CivilizationOS.


# ============================================================
# 1. COMPANY DRAFT MODELS
# ============================================================

## COMPANY_DRAFT
core_fields:
- company_draft_id
- draft_code
- draft_name
- company_type_code
- draft_status
- created_by
- created_at
- updated_at

draft_status examples:
- draft
- validating
- validation_failed
- validated
- approval_pending
- approved
- published
- activated
- rejected
- archived

## COMPANY_DRAFT_IDENTITY
core_fields:
- company_draft_identity_id
- company_draft_id
- formal_name
- short_name
- company_code_candidate
- legal_category
- nation_code
- created_at
- updated_at


# ============================================================
# 2. COMPANY TYPE TEMPLATE MODELS
# ============================================================

## COMPANY_TYPE_TEMPLATE
core_fields:
- company_type_template_id
- company_type_code
- template_name
- user_create_enabled
- system_only_flag
- legal_category
- template_status
- created_at
- updated_at

## COMPANY_TYPE_TEMPLATE_CAPABILITY
core_fields:
- company_type_template_capability_id
- company_type_template_id
- capability_code
- capability_status
- created_at
- updated_at

capability_code examples:
- upload_app
- upload_design
- import_pdf
- import_jpeg
- manage_contracts
- manage_portfolio
- create_fund
- recruit_followers
- manage_donation
- host_exhibition
- host_screening

## COMPANY_TYPE_TEMPLATE_PRODUCT_SCOPE
core_fields:
- company_type_template_product_scope_id
- company_type_template_id
- product_category_code
- scope_status
- created_at
- updated_at


# ============================================================
# 3. TYPE-SPECIFIC PROFILE MODELS
# ============================================================

## COMPANY_UPLOAD_PROFILE
core_fields:
- company_upload_profile_id
- company_draft_id
- upload_surface_type
- allowed_file_type_summary
- upload_profile_status
- created_at
- updated_at

upload_surface_type examples:
- app_package_upload
- design_upload
- pdf_content_import
- image_content_import

## COMPANY_PORTFOLIO_PROFILE
core_fields:
- company_portfolio_profile_id
- company_draft_id
- portfolio_type
- portfolio_summary
- profile_status
- created_at
- updated_at

portfolio_type examples:
- sourced_product_portfolio
- investment_portfolio
- education_program_portfolio
- arts_content_portfolio
- fashion_catalog

## COMPANY_CONTRACT_PROFILE
core_fields:
- company_contract_profile_id
- company_draft_id
- contract_surface_type
- contract_profile_status
- created_at
- updated_at

contract_surface_type examples:
- supplier_contract
- distribution_contract
- agency_contract
- rights_contract
- scout_offer_contract


# ============================================================
# 4. CULTURE / ARTS SCOUT MODELS
# ============================================================

## CONTENT_SCOUT_RECORD
core_fields:
- content_scout_record_id
- target_content_ref
- target_company_ref
- scout_by_system_company_ref
- scout_reason
- scout_status
- created_at
- updated_at

## SYSTEM_CONTACT_OFFER
core_fields:
- system_contact_offer_id
- target_content_ref
- target_company_ref
- offer_type
- offer_summary
- offer_status
- created_at
- updated_at

offer_type examples:
- recommendation
- event_invitation
- collaboration_proposal
- official_adoption_proposal
- story_integration_proposal

## CONTENT_ADOPTION_RECORD
core_fields:
- content_adoption_record_id
- target_content_ref
- adopted_by_system_ref
- adoption_type
- adoption_status
- adopted_at
- created_at
- updated_at

adoption_type examples:
- official_recommended
- official_event_use
- official_collaboration
- official_side_story
- core_canon_integrated

## STORY_INTEGRATION_RECORD
core_fields:
- story_integration_record_id
- target_content_ref
- canon_level
- integration_scope
- integration_status
- created_at
- updated_at

canon_level examples:
- featured_only
- official_recommended
- official_side_story
- official_collaboration
- core_canon_integrated


# ============================================================
# 5. APPROVAL / PUBLICATION MODELS
# ============================================================

## COMPANY_DRAFT_APPROVAL
core_fields:
- company_draft_approval_id
- company_draft_id
- approval_type
- approval_status
- approver_ref
- approval_note
- approved_at
- created_at
- updated_at

## COMPANY_PUBLICATION_RECORD
core_fields:
- company_publication_record_id
- company_draft_id
- published_company_ref
- publication_status
- published_at
- created_at
- updated_at


# ============================================================
# 6. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for company builder inside CivilizationOS.

Core summary:

- company draft is explicit
- company type template is explicit
- type-specific capability and product scope are explicit
- upload/portfolio/contract profiles are explicit
- culture/arts scout and adoption path are explicit
- approval and publication are explicit
