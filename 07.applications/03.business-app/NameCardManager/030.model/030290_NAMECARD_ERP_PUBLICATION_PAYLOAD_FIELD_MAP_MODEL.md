# ============================================================
# NAMECARD ERP PUBLICATION PAYLOAD FIELD MAP MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Defines field mapping between NameCardManager data,
shared BusinessOS ERP publication input,
and ERP-facing publication payload output.

# ============================================================
# 1. APPLICATION-SIDE INPUT FIELDS
# ============================================================

application_input_fields:
- requester_user_id
- namecard_id
- company_id
- publication_policy_code
- request_note
- full_name
- company_name
- department_name
- title_name
- email
- phone
- address_text
- website_url
- memo
- authority_scope_note
- decision_scope_note
- responsibility_scope_note
- work_scope_note
- work_content_note
- influence_scope_note
- relationship_note
- order_history_summary

# ============================================================
# 2. SHARED BUSINESSOS PUBLICATION INPUT FIELDS
# ============================================================

shared_publication_input_fields:
- publication_request_id
- requester_user_id
- source_application_code
- source_record_id
- company_id
- publication_policy_code
- approval_required
- canonical_version
- normalized_contact_payload
- supplemental_business_context
- audit_context

# ============================================================
# 3. ERP-FACING OUTPUT FIELDS
# ============================================================

erp_output_fields:
- erp_payload_type
- company_id
- source_application_code
- source_record_id
- contact_full_name
- contact_company_name
- contact_department_name
- contact_title_name
- contact_email
- contact_phone
- contact_address
- contact_website
- business_context_summary
- decision_scope_summary
- responsibility_scope_summary
- work_scope_summary
- relationship_summary
- order_history_summary
- publication_timestamp

# ============================================================
# 4. NOTES
# ============================================================

notes:
- application does not directly define final ERP payload shape alone
- shared BusinessOS capability performs normalization and transformation
- ERP-facing output is publication-oriented, not raw local model dump
