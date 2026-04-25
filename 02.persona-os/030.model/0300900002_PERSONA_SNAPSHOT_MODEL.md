# 0300900002_PERSONA_SNAPSHOT_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: snapshot
canonical: candidate
path: 030.model/0300900002_PERSONA_SNAPSHOT_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for immutable snapshot issuance.

primary_entities:
- persona_snapshot
- persona_snapshot_lineage
- persona_snapshot_issue_record

required_identifiers:
- snapshot_id
- source_draft_id
- publish_request_id
- lineage_id

required_fields:
- source_draft_version
- content_hash
- issued_at
- snapshot_status
- issued_by

constraints:
- snapshot becomes immutable at issuance
- content_hash must be deterministic for same content
- lineage to source draft and publish request must remain queryable
- new issuance requires new snapshot identity

query_paths:
- by snapshot_id
- by source_draft_id
- by source_draft_version
- by publish_request_id

review_targets:
- add exact hash algorithm field
- add exact immutability enforcement notes
