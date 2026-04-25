# PERSONA CIVILIZATION SUPPORT EXTERNAL DISPATCH AND SURFACE SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_064139

purpose:
Condenses outward dispatch semantics and externally visible routing surfaces inside the civilization support bundle.

function:
- external_dispatcher

external_dispatcher role:
- outward routing only
- not validation owner
- not internal dispatcher owner
- not mutable truth owner
- not public truth replication owner by default

request_required_fields:
- dispatch_reference_or_event_reference
- external_target
- dispatched_by

request_optional_fields:
- contract_context
- retry_context
- external_dispatch_trace_id

response_required_fields:
- dispatch_status
- external_dispatch_reference
- dispatched_at

status_family:
- external_dispatch_succeeded
- external_dispatch_rejected
- external_dispatch_retrying
- external_dispatch_failed

surface rules:
- external dispatch may expose routing-safe result only
- external dispatch must not expose mutable truth directly
- external dispatch must respect signed snapshot and event contract only surfaces
- external dispatch must remain downstream from upstream validation and policy checks

hard rules:
- external dispatch is not validation
- external dispatch is not truth mutation
- external dispatch success does not imply external consumer truth acceptance
