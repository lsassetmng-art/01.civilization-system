# ============================================================
# BUSINESS PERSONA LICENSE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona license or usage permission state inside BusinessOS.

role:
This model represents Business-visible permission state returned by PersonaOS.

BusinessOS is primarily user-scoped.
Company context may be attached only when ERP-send-capable app behavior
requires outbound company-scoped payload construction.

primary_key:
- business_persona_license_ref_id

natural_key:
- business_user_id
- persona_id

fields:
- business_persona_license_ref_id
- business_user_id
- persona_id
- usage_permission_status
- granted_scope
- denied_scope
- revoked_reason
- effective_from
- effective_until
- erp_company_context_id
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

usage_permission_status_enum:
- pending
- granted
- denied
- revoked
- expired

rules:
- permission and trust are separate
- granted does not imply unrestricted exposure
- BusinessOS must combine this model with trust ref
- PersonaOS remains truth holder
- erp_company_context_id is optional and must not be part of the default truth identity
