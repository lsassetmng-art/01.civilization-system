# PERSONA EDGE 29 FUNCTION CANONICAL LEDGER

status: confirmed
system: PersonaOS
layer: meta
confirmed_at: 20260418_121148

purpose:
Freezes the currently confirmed 29 Edge Functions as the canonical existing Edge ledger for PersonaOS.

lifecycle:
- persona-create
- persona-event-history

runtime_engine:
- persona-state-apply
- sign-event

runtime_visual:
- visual-job-create
- visual-compose
- visual-upload

asset:
- persona-auto-generate-part
- persona_build_manifest
- persona_background_get_signed_urls

approval_publish:
- approval-create
- approval-action
- approval-sla
- asset-publish-request-create
- asset-publish-request-decide
- asset-publish-list
- publish_apply

security_snapshot:
- snapshot-issue
- snapshot-revoke
- snapshot-verify
- revocation-list

security_keys:
- keygen-once
- keys-by-id
- keys-current

integration_civilization:
- civilization-event-dispatcher
- civilization-event-producer
- civilization-dead-notify
- event-validate
- external_dispatcher

count_summary:
- total_functions: 29
- lifecycle: 2
- runtime_engine: 2
- runtime_visual: 3
- asset: 3
- approval_publish: 7
- security_snapshot: 4
- security_keys: 3
- integration_civilization: 5

design_rule:
This ledger is for PersonaOS design mapping only.
It does not imply implementation has started.

