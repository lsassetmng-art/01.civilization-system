# PERSONA OS EDGE TO CORE TO POLICY INTEGRATION MAP

status: overall-integration-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_170026

purpose:
Shows how the Edge design connects to the rest of PersonaOS architecture.

integration map:

▶ core truth path
- civilization-event-dispatcher
- persona-state-apply
- state_apply or apply_event_engine boundary
- canonical mutable truth tables
- downstream snapshot or release surfaces when policy requires

meaning:
Edge runtime orchestration is now correctly attached to the canonical truth boundary
without collapsing ownership into the edge itself.

▶ trust path
- sign-event
- snapshot-issue
- snapshot-verify
- snapshot-revoke
- revocation-list
- keys-current
- keys-by-id

meaning:
PersonaOS trust is now modeled as:
authenticity generation -> immutable release artifact issue -> trust verification -> invalidation -> publication
with key continuity separated from active key publication.

▶ release path
- approval surfaces
- publish_apply
- asset-publish-list

meaning:
Governance decision, release application, and released listing are now distinct.
This aligns external release behavior with internal policy.

▶ visual candidate path
- visual and asset support bundle
- release-ready candidate
- publish path
- released artifact

meaning:
Visual outputs and generated parts do not automatically become released artifacts.
Promotion remains policy-bound and lineage-bound.

▶ lifecycle path
- persona-create
- persona-event-history

meaning:
Lifecycle entry and lifecycle retrieval remain parallel support surfaces,
not replacements for runtime or truth mutation flow.

▶ control path
- atlas
- registry
- routing
- maintenance ops
- gate
- master ledger

meaning:
PersonaOS Edge is already operating under controlled design maintenance discipline.

policy integration result:
The edge system is no longer isolated.
It is now explicitly attached to:
- truth ownership rules
- external disclosure rules
- release rules
- lifecycle rules
- maintenance and escalation rules
