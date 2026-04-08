# ============================================================
# ESTIMATE ERP PUBLISH SETTING MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_erp_publish_setting stores publication-related configuration
used when EstimateCreator prepares ERP publication requests.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- publish_setting_id
- owner_scope_type
- owner_scope_id
- company_id
- publication_channel
- is_enabled
- require_approval_before_publication
- payload_profile_code
- created_at
- updated_at

# ============================================================
# 3. OWNER SCOPE
# ============================================================

Representative owner_scope_type values:

- application
- workspace
- user

# ============================================================
# 4. CHANNEL RULE
# ============================================================

publication_channel identifies the shared BusinessOS publication route
or publication profile expected by the app.

EstimateCreator must not treat this model
as a private direct ERP credential source.

