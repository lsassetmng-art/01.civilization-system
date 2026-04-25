# PERSONA TRUST FAMILY TIER A EXACT REQUEST RESPONSE CONTRACT

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes the exact request and response contract for sign-event, keygen-once, keys-by-id, and keys-current.

sign_event_request_required_fields:
- signing_subject_reference
- sign_payload_or_reference
- signing_context

sign_event_request_optional_fields:
- key_selection_hint
- trace_context

sign_event_response_required_fields:
- sign_status
- signature_reference_or_signature
- key_reference
- signed_at

keygen_once_request_required_fields:
- key_purpose
- requested_by

keygen_once_request_optional_fields:
- rotation_context
- lifecycle_context

keygen_once_response_required_fields:
- key_id
- key_status
- created_at

keys_by_id_request_required_fields:
- key_id

keys_by_id_response_required_fields:
- key_id
- key_status
- public_verification_material_or_reference

keys_current_response_required_fields:
- current_key_set_status
- key_reference_list_or_material
- published_at

contract_rules:
- sign-event must not expose private material
- keys-by-id and keys-current expose verification-safe surface only
- keygen-once must not imply public publication by itself

