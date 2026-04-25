# PERSONA SIGN AND KEY FAMILY REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes request and response contracts for sign-event, keygen-once, keys-by-id, and keys-current.

sign_event_request:
  required_fields:
    - signing_subject_reference
    - sign_payload_or_reference
    - signing_context
  optional_fields:
    - key_selection_hint

sign_event_response:
  required_fields:
    - signature_reference or signature
    - key_reference
    - signed_at
    - sign_status

keygen_once_request:
  required_fields:
    - key_purpose
    - requested_by
  optional_fields:
    - rotation_context

keygen_once_response:
  required_fields:
    - key_id
    - key_status
    - created_at

keys_by_id_request:
  required_fields:
    - key_id

keys_by_id_response:
  required_fields:
    - key_id
    - key_status
    - public_verification_material_or_reference

keys_current_response:
  required_fields:
    - current_key_set_status
    - key_list or key references
    - published_at

contract_rule:
- signing functions must not expose private signing material
- key retrieval functions expose verification-safe material only

