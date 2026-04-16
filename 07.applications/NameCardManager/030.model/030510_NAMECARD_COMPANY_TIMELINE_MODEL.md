# ============================================================
# NAMECARD COMPANY TIMELINE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

model_type: derived_read_model

fields:
  - timeline_event_id
  - company_group_key
  - primary_company_name
  - event_at
  - event_type
  - source_type
  - source_id
  - primary_namecard_id
  - related_namecard_ids
  - summary_label
  - detail_excerpt
  - priority_weight
  - visibility_scope
  - is_inferred
  - confidence_score
  - created_at
  - updated_at

event_types:
  - namecard_created
  - namecard_updated
  - meeting_logged
  - followup_suggested
  - order_related_event
  - relationship_confirmed
  - relationship_inferred
  - erp_publication_requested
  - erp_publication_completed
