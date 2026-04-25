# PERSONA OS CROSS DOMAIN OWNERSHIP AND COLLISION RECOVERY

status: residual-recovery-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_170409

purpose:
Eliminates the remaining cross-domain ambiguity by fixing the final ownership reading across PersonaOS.

final ownership reading:

▶ mutable truth core ownership
- canonical mutable truth belongs behind the state_apply or equivalent canonical apply boundary
- no edge label alone becomes truth owner

▶ runtime orchestration ownership
- persona-state-apply owns orchestration around apply flow
- it does not absorb canonical mutable truth ownership

▶ trust ownership
- sign-event owns signature generation support
- snapshot-issue owns immutable release artifact issuance
- snapshot-verify owns trust verification
- snapshot-revoke owns invalidation
- revocation-list owns invalidation publication
- keys-current owns active verification-safe key publication
- keys-by-id owns exact and historical verification-safe lookup

▶ release ownership
- governance decision remains upstream of release application
- publish_apply owns release application only
- asset-publish-list owns released listing surface only

▶ visual and candidate ownership
- visual and asset support functions own work-state or candidate-stage outputs only
- they do not own released artifact state by default

▶ lifecycle ownership
- persona-create owns lifecycle entry only
- persona-event-history owns retrieval only

▶ control ownership
- atlas, registry, maintenance, gate, and master ledger own operational design control only

collision recovery result:
- no remaining need to merge runtime orchestration with truth ownership
- no remaining need to merge trust phases together
- no remaining need to merge release application with listing
- no remaining need to treat candidate-stage assets as released artifacts
- no remaining need to reinterpret lifecycle surfaces as runtime truth mutation surfaces

hard_rule:
Future updates must preserve this cross-domain ownership reading unless a real semantic contradiction is explicitly named.
