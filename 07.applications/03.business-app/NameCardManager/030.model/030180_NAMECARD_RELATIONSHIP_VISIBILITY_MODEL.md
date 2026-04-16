# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines visibility-oriented relationship representation for
NameCardManager.

fields:
- relationship_visibility_id
- source_namecard_id
- target_entity_type
- target_namecard_id
- target_external_ref
- relationship_type
- relationship_label
- visibility_level
- evidence_source
- display_priority
- is_user_confirmed
- created_at
- updated_at

target_entity_type_examples:
- namecard
- company_contact
- project_party
- order_party
- external_entity

relationship_type_examples:
- same_company
- same_department
- manager
- subordinate
- decision_maker
- working_contact
- introducer
- introduced
- order_related
- project_related
- repeat_contact

visibility_level_examples:
- hidden
- minimal
- normal
- emphasized

evidence_source_examples:
- manual
- order_history
- project_context
- same_company_inference
- imported_link
