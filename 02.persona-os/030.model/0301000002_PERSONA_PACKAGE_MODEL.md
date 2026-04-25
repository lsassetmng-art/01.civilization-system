# 0301000002_PERSONA_PACKAGE_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: package
canonical: candidate
path: 030.model/0301000002_PERSONA_PACKAGE_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for package assembly and distribution.

primary_entities:
- persona_package
- persona_package_manifest
- persona_package_revocation_record

required_identifiers:
- package_id
- manifest_id
- source_snapshot_id
- revocation_record_id

required_fields:
- package_status
- integrity_hash
- manifest_version
- created_at
- revoked_at
- created_by

constraints:
- package must reference immutable source snapshot lineage
- manifest completeness is mandatory
- integrity mismatch must be representable
- revoked package must remain queryable and blocked

query_paths:
- by package_id
- by source_snapshot_id
- by package_status
- by revocation state

review_targets:
- add exact manifest fields
- add exact revocation semantics
