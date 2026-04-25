# PERSONA SNAPSHOT FAMILY STORAGE AND REVOCATION DEPENDENCY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes the storage and dependency model of the snapshot family.

dependency_model:
- snapshot-issue depends on release-safe source lineage
- snapshot-verify depends on signed artifact and key reference
- snapshot-revoke depends on existing issued artifact identity
- revocation-list depends on revocation publication dataset

storage_relations:
- persona_snapshot or equivalent immutable release artifact ledger
- signature linkage to signing material reference
- revocation state or revocation log
- publication surface for revocation-list

storage_rules:
- mutable truth tables are not the storage home of issued snapshots
- revocation state must remain distinguishable from issuance state
- verification may read artifact and trust references but must not mutate them
- publication list may be derived from authoritative revocation state

