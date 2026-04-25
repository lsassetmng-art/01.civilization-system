# PERSONA PACKET LINKED SCOPE AND REOPEN TRIGGER MATRIX

status: operational-master-ledger
system: PersonaOS
layer: implementation
confirmed_at: 20260419_115009

purpose:
Defines when a packet update must stay local and when it must reopen linked scope.

local_only_update_cases:
- wording-only change inside one packet
- field-order clarification inside one packet
- packet-local testpoint clarification
- packet-local fallback note clarification

linked_scope_update_cases:
- one packet changes a shared boundary meaning
- one packet changes linked external surface semantics
- one packet changes packet membership meaning
- one packet changes top5 relation assumptions
- one packet changes bundle-to-packet routing assumptions

reopen_trigger_matrix:
- persona-state-apply
  - linked_scope_trigger_if_changed:
    - snapshot-issue relation
    - civilization-event-dispatcher relation
    - truth-handoff meaning

- snapshot-issue
  - linked_scope_trigger_if_changed:
    - snapshot-verify relation
    - snapshot_downstream relation
    - trust support dependency meaning

- snapshot-verify
  - linked_scope_trigger_if_changed:
    - trust_support relation
    - snapshot_downstream interpretation relation
    - public-safe result taxonomy meaning

- publish_apply
  - linked_scope_trigger_if_changed:
    - release_surface relation
    - asset-publish-list downstream readiness meaning

- civilization-event-dispatcher
  - linked_scope_trigger_if_changed:
    - civilization_support relation
    - persona-state-apply handoff meaning
    - dead-path relation meaning

non_top5_bundle_reopen_triggers:
- trust_support
  - if sign-event, keys-current, or keys-by-id role split changes
- release_surface
  - if apply-to-listing relation changes
- snapshot_downstream
  - if revoke/publication role split changes
- visual_asset_support
  - if candidate-to-release-ready meaning changes
- civilization_support
  - if producer/validate/dead-notify/external routing role split changes
- lifecycle
  - if create/history role split changes

matrix_rule:
Reopen linked scope only when semantic relation changes, not for cosmetic local edits.
