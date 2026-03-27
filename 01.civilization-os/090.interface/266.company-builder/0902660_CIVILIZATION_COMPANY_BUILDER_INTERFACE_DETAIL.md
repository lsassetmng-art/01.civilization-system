# ============================================================
# CIVILIZATION COMPANY BUILDER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for company builder
inside CivilizationOS.


# ============================================================
# 1. DRAFT INTERFACE
# ============================================================

required_fields:
- draft_name
- company_type_code
- correlation_id


# ============================================================
# 2. COMMON SETUP INTERFACE
# ============================================================

required_fields:
- company_draft_ref
- update_domain
- update_payload_summary
- correlation_id

update_domain examples:
- identity
- legal_category
- location
- premises
- brand
- publication


# ============================================================
# 3. TYPE-SPECIFIC SETUP INTERFACE
# ============================================================

required_fields:
- company_draft_ref
- company_type_code
- setup_action
- correlation_id

setup_action examples:
- upload_app_package
- upload_design_package
- import_pdf_content
- import_jpeg_content
- configure_portfolio
- configure_contract_surface
- configure_fund
- configure_education_program
- configure_doctrine
- configure_recruitment


# ============================================================
# 4. SCOUT / OFFICIAL CONTACT INTERFACE
# ============================================================

required_fields:
- target_content_ref
- action_type
- correlation_id

action_type examples:
- mark_scout_target
- send_system_offer
- review_offer
- accept_offer
- reject_offer
- record_adoption
- record_story_integration


# ============================================================
# 5. VALIDATION / APPROVAL / PUBLICATION INTERFACE
# ============================================================

required_fields:
- company_draft_ref
- action_type
- correlation_id

action_type examples:
- validate
- request_approval
- approve
- reject
- publish
- activate


# ============================================================
# 6. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 7. FINAL INTERFACE RULE
# ============================================================

Company builder interfaces must be:
- template-aware
- type-aware
- upload-aware
- contract-aware
- scout/adoption-aware
- activation-aware
