# ============================================================
# NAMECARD ERP PUBLISH SETTING MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publish_setting
owner: Boss
prepared_by: Zero

purpose:
Defines ERP publication configuration and eligibility.

fields:
- erp_publish_setting_id
- owner_user_id
- company_id
- erp_use_enabled
- publication_policy_code
- approval_required
- created_at
- updated_at
