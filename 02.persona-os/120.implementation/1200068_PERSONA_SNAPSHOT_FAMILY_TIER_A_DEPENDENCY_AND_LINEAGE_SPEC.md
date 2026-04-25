# PERSONA SNAPSHOT FAMILY TIER A DEPENDENCY AND LINEAGE SPEC

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes exact dependency, lineage, and storage-side reasoning for snapshot family behavior.

lineage_dependencies:
- snapshot-issue depends on release-safe source lineage
- snapshot-verify depends on signed artifact plus verification-safe key reference
- snapshot-revoke depends on existing issued snapshot identity
- revocation-list depends on authoritative revocation state

storage_side_rules:
- issued snapshot lives in immutable release-artifact domain
- revoke state remains distinct from issue state
- verification reads artifact and trust references only
- revocation publication may be derived from authoritative revoke state

lineage_rules:
- no mutable truth row is itself the issued snapshot artifact
- issued snapshot must remain traceable to source_lineage_reference
- revoked snapshot must remain traceable to original issue identity
- verification result must be attributable to artifact and key reference set used

