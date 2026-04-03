# ============================================================
# CIVILIZATION UPLOAD MODERATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for upload moderation
inside CivilizationOS.


# ============================================================
# 1. NOTICE / AGREEMENT INTERFACE
# ============================================================

required_fields:
- uploader_ref
- upload_scope
- notice_version
- agreement_action
- correlation_id

agreement_action examples:
- agree
- decline


# ============================================================
# 2. UPLOAD SUBMISSION INTERFACE
# ============================================================

required_fields:
- uploader_ref
- company_ref or company_draft_ref
- company_type_code
- upload_surface_type
- file_type
- source_file_ref
- correlation_id


# ============================================================
# 3. REVIEW INTERFACE
# ============================================================

required_fields:
- company_upload_record_ref
- review_action
- correlation_id

review_action examples:
- start_ai_review
- complete_ai_review
- escalate_to_human
- start_human_review
- pass_human_review
- reject_human_review
- hold_review


# ============================================================
# 4. PUBLICATION DECISION INTERFACE
# ============================================================

required_fields:
- company_upload_record_ref
- decision_action
- correlation_id

decision_action examples:
- allow_publication
- deny_publication
- hold_publication
- suspend_publication
- delist_content


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

Upload moderation interfaces in CivilizationOS must be:
- notice-aware
- agreement-aware
- review-aware
- publication-aware
- fail-closed compatible
