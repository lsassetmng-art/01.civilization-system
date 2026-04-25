# 0301300004_PERSONA_TRANSFER_RECORD_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: transfer
canonical: candidate
path: 030.model/0301300004_PERSONA_TRANSFER_RECORD_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for ownership or stewardship transfer.

primary_entities:
- persona_transfer_record
- persona_transfer_decision

required_identifiers:
- transfer_id
- persona_id
- from_party_id
- to_party_id
- transfer_decision_id

required_fields:
- transfer_status
- transfer_reason
- initiated_at
- completed_at
- approved_by

constraints:
- transfer must not be treated as access grant
- transfer must preserve lineage history
- failed transfer must remain auditable

query_paths:
- by transfer_id
- by persona_id
- by from_party_id
- by to_party_id
- by transfer_status

review_targets:
- add exact approval chain fields
- add exact lineage preservation fields
