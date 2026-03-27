# ============================================================
# CIVILIZATION COMPANY TYPE UI SURFACE TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI surface table
by company type inside CivilizationOS.


# ============================================================
# 1. UI SURFACE TABLE
# ============================================================

## ARCHITECTURAL DESIGN COMPANY
company_type_code:
- architectural_design_company

required_ui_surfaces:
- common_company_builder_shell
- design_upload_surface
- facility_compatibility_surface
- bonus_stat_surface
- pricing_surface

required_upload_types:
- design_package
- preview_image

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- design_catalog_surface


## INTERIOR COMPANY
company_type_code:
- interior_company

required_ui_surfaces:
- common_company_builder_shell
- design_upload_surface
- housing_compatibility_surface
- bonus_stat_surface
- pricing_surface

required_upload_types:
- design_package
- preview_image

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- interior_catalog_surface


## FASHION COMPANY
company_type_code:
- fashion_company

required_ui_surfaces:
- common_company_builder_shell
- fashion_upload_surface
- persona_compatibility_surface
- bonus_stat_surface
- pricing_surface

required_upload_types:
- costume_package
- accessory_package
- preview_image

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- fashion_catalog_surface


## RETAIL COMPANY
company_type_code:
- retail_company

required_ui_surfaces:
- common_company_builder_shell
- supplier_contract_surface
- distribution_right_surface
- sourced_product_portfolio_surface
- storefront_surface

required_upload_types:
- none_required_for_sourced_resale

required_contract_surfaces:
- supplier_contract_surface
- distribution_contract_surface
- agency_contract_surface

required_portfolio_surfaces:
- sourced_product_portfolio_surface


## INVESTMENT COMPANY
company_type_code:
- investment_company

required_ui_surfaces:
- common_company_builder_shell
- fund_builder_surface
- investment_scope_surface
- solicitation_surface
- portfolio_surface

required_upload_types:
- none_required_initially

required_contract_surfaces:
- investment_offering_surface

required_portfolio_surfaces:
- investment_portfolio_surface


## EDUCATION COMPANY
company_type_code:
- education_company

required_ui_surfaces:
- common_company_builder_shell
- text_import_surface
- curriculum_surface
- age_band_surface
- program_surface

required_upload_types:
- text_material
- program_material

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- education_program_portfolio_surface


## GAME COMPANY
company_type_code:
- game_company

required_ui_surfaces:
- common_company_builder_shell
- game_upload_surface
- runtime_origin_surface
- release_surface
- publishing_surface

required_upload_types:
- game_package
- thumbnail
- preview_images

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- game_release_catalog_surface


## SOFTWARE COMPANY
company_type_code:
- software_company

required_ui_surfaces:
- common_company_builder_shell
- app_upload_surface
- runtime_origin_surface
- businessos_link_surface
- publishing_surface

required_upload_types:
- app_package
- thumbnail
- preview_images

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- app_release_catalog_surface


## CULTURE_ARTS COMPANY
company_type_code:
- culture_arts_company

required_ui_surfaces:
- common_company_builder_shell
- pdf_import_surface
- jpeg_import_surface
- content_catalog_surface
- exhibition_surface
- screening_surface
- official_scout_surface

required_upload_types:
- pdf_content
- jpeg_content
- preview_image

required_contract_surfaces:
- scout_offer_surface
- official_contact_surface
- rights_contract_surface

required_portfolio_surfaces:
- arts_content_portfolio_surface


## RELIGIOUS CORPORATION
company_type_code:
- religious_corporation

required_ui_surfaces:
- common_company_builder_shell
- doctrine_surface
- recruitment_surface
- donation_surface
- ritual_event_surface
- facility_relation_surface

required_upload_types:
- doctrine_text where applicable
- religious_material where applicable

required_contract_surfaces:
- none_required_initially

required_portfolio_surfaces:
- doctrine_program_surface


# ============================================================
# 2. CROSS-TYPE UI REQUIREMENT GROUPS
# ============================================================

upload_required_company_types:
- architectural_design_company
- interior_company
- fashion_company
- education_company
- game_company
- software_company
- culture_arts_company
- religious_corporation where applicable

contract_required_company_types:
- retail_company
- investment_company
- culture_arts_company

portfolio_required_company_types:
- retail_company
- investment_company
- education_company
- game_company
- software_company
- culture_arts_company
- fashion_company
- architectural_design_company
- interior_company


# ============================================================
# 3. MODERATION UI REQUIREMENT
# ============================================================

All upload-required company types must include:
- prohibited_notice_surface
- explicit_agreement_surface
- ai_review_status_surface
- human_review_status_surface
- publication_decision_surface


# ============================================================
# 4. FINAL UI SURFACE TABLE RULE
# ============================================================

This table is the official UI surface mapping
by company type for CivilizationOS company builder.

Core summary:

- common shell is shared
- specialized surfaces are company-type-specific
- upload-capable types require moderation surfaces
- contract-heavy types require contract surfaces
- portfolio-driven types require portfolio surfaces
