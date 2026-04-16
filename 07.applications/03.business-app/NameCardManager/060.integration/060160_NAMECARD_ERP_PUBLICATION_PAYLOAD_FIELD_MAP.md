# ============================================================
# NAMECARD ERP PUBLICATION PAYLOAD FIELD MAP
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: erp_publication_payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Defines the handoff mapping from NameCardManager to shared
BusinessOS ERP publication capability and onward to ERP output.

# ============================================================
# 1. HANDOFF PRINCIPLE
# ============================================================

NameCardManager provides source fields and business context.
Shared BusinessOS capability transforms them into ERP-facing payload.

# ============================================================
# 2. EXAMPLE FIELD MAP
# ============================================================

application_to_shared_map:
- namecard_id -> source_record_id
- requester_user_id -> requester_user_id
- company_id -> company_id
- publication_policy_code -> publication_policy_code
- full_name -> normalized_contact_payload.full_name
- company_name -> normalized_contact_payload.company_name
- department_name -> normalized_contact_payload.department_name
- title_name -> normalized_contact_payload.title_name
- email -> normalized_contact_payload.email
- phone -> normalized_contact_payload.phone
- address_text -> normalized_contact_payload.address_text
- website_url -> normalized_contact_payload.website_url
- authority_scope_note -> supplemental_business_context.authority_scope
- decision_scope_note -> supplemental_business_context.decision_scope
- responsibility_scope_note -> supplemental_business_context.responsibility_scope
- work_scope_note -> supplemental_business_context.work_scope
- work_content_note -> supplemental_business_context.work_content
- influence_scope_note -> supplemental_business_context.influence_scope
- relationship_note -> supplemental_business_context.relationship_summary
- order_history_summary -> supplemental_business_context.order_history_summary

shared_to_erp_map:
- source_record_id -> source_record_id
- company_id -> company_id
- normalized_contact_payload.full_name -> contact_full_name
- normalized_contact_payload.company_name -> contact_company_name
- normalized_contact_payload.department_name -> contact_department_name
- normalized_contact_payload.title_name -> contact_title_name
- normalized_contact_payload.email -> contact_email
- normalized_contact_payload.phone -> contact_phone
- normalized_contact_payload.address_text -> contact_address
- normalized_contact_payload.website_url -> contact_website
- supplemental_business_context.decision_scope -> decision_scope_summary
- supplemental_business_context.responsibility_scope -> responsibility_scope_summary
- supplemental_business_context.work_scope -> work_scope_summary
- supplemental_business_context.relationship_summary -> relationship_summary
- supplemental_business_context.order_history_summary -> order_history_summary

# ============================================================
# 3. RULES
# ============================================================

- application must not bypass shared transformation layer
- shared capability may omit, redact, or normalize fields by policy
- ERP payload should use publication-safe normalized values
- protected fields must follow authorization and publication policy

