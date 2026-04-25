# PERSONA SIGN EVENT FINAL CONTRACT AND STATUS SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212013

purpose:
Condenses the final request, response, and status interpretation for sign-event.

request_required_fields:
- signing_subject_reference
- sign_payload_or_reference
- signing_context

request_optional_fields:
- key_selection_hint
- trace_context

request_core_rules:
- signing_subject_reference must resolve to a policy-eligible signing subject
- sign_payload_or_reference must resolve to the canonical payload or its safe reference
- signing_context must remain explicit
- key_selection_hint may guide selection but must not bypass key policy

response_required_fields:
- sign_status
- signature_reference_or_signature
- key_reference
- signed_at

status_family:
- sign_succeeded
- sign_rejected
- sign_failed

status_rules:
- sign_succeeded means signature output exists with verification-safe key reference
- sign_rejected means signing was blocked by policy, authority, or invalid subject conditions
- sign_failed means operational failure prevented signature generation
- sign_rejected must remain distinct from sign_failed

external_response_rule:
sign-event may expose signature-safe result fields only.
It must not expose private signing material or hidden internal trust internals.

