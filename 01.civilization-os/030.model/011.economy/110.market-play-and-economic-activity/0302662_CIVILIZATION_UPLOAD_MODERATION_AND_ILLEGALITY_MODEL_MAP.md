# ============================================================
# CIVILIZATION UPLOAD MODERATION AND ILLEGALITY MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for upload moderation
and illegality control inside CivilizationOS.


# ============================================================
# 1. NOTICE / AGREEMENT MODELS
# ============================================================

## UPLOAD_PROHIBITED_NOTICE
core_fields:
- upload_prohibited_notice_id
- notice_version
- notice_scope
- notice_status
- effective_from
- effective_to
- created_at
- updated_at

notice_scope examples:
- app_upload
- design_upload
- pdf_content_upload
- image_content_upload
- generic_company_upload

## UPLOAD_NOTICE_AGREEMENT_RECORD
core_fields:
- upload_notice_agreement_record_id
- uploader_ref
- company_draft_ref or company_ref
- upload_scope
- notice_version
- agreement_status
- agreed_at
- created_at
- updated_at

agreement_status examples:
- agreed
- declined
- expired


# ============================================================
# 2. UPLOAD / REVIEW MODELS
# ============================================================

## COMPANY_UPLOAD_RECORD
core_fields:
- company_upload_record_id
- company_ref or company_draft_ref
- company_type_code
- upload_surface_type
- file_type
- source_file_ref
- upload_status
- uploaded_at
- created_at
- updated_at

upload_surface_type examples:
- app_package_upload
- design_upload
- pdf_content_import
- image_content_import

upload_status examples:
- uploaded
- ai_review_pending
- ai_review_passed
- ai_review_failed
- human_review_pending
- human_review_passed
- human_review_rejected
- hold
- published
- suspended
- delisted

## UPLOAD_AI_REVIEW_RECORD
core_fields:
- upload_ai_review_record_id
- company_upload_record_id
- ai_review_status
- ai_risk_level
- ai_review_summary
- reviewed_at
- created_at
- updated_at

ai_review_status examples:
- pending
- passed
- failed
- escalated

ai_risk_level examples:
- low
- medium
- high
- critical

## UPLOAD_HUMAN_REVIEW_RECORD
core_fields:
- upload_human_review_record_id
- company_upload_record_id
- reviewer_ref
- human_review_status
- review_reason
- reviewed_at
- created_at
- updated_at

human_review_status examples:
- pending
- passed
- rejected
- hold
- needs_more_info


# ============================================================
# 3. ILLEGALITY / RIGHTS / POLICY MODELS
# ============================================================

## UPLOAD_ILLEGALITY_CHECK_RECORD
core_fields:
- upload_illegality_check_record_id
- company_upload_record_id
- check_type
- check_status
- check_summary
- checked_at
- created_at

check_type examples:
- illegality_check
- rights_infringement_check
- prohibited_category_check
- policy_violation_check
- age_gate_check

check_status examples:
- passed
- failed
- unresolved
- escalated

## UPLOAD_PUBLICATION_DECISION
core_fields:
- upload_publication_decision_id
- company_upload_record_id
- publication_decision
- decision_reason_summary
- decided_at
- created_at

publication_decision examples:
- publish_allowed
- publish_denied
- publish_hold
- unresolved_policy


# ============================================================
# 4. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for upload moderation and illegality control
inside CivilizationOS.

Core summary:

- prohibited notice is explicit
- user agreement is explicit
- upload record is explicit
- AI review is explicit
- human review is explicit
- publication decision is explicit
