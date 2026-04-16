# ============================================================
# NAMECARD RELATIONSHIP MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_relationship
owner: Boss
prepared_by: Zero

purpose:
Represents visible relationships between cards and related entities.

fields:
- relationship_id
- source_namecard_id
- target_namecard_id
- relationship_type
- relationship_strength
- relationship_note
- created_at
- updated_at

examples:
- same_company
- manager
- subordinate
- deal_related
- project_related
- introducer
- introduced
- decision_maker
- working_contact
