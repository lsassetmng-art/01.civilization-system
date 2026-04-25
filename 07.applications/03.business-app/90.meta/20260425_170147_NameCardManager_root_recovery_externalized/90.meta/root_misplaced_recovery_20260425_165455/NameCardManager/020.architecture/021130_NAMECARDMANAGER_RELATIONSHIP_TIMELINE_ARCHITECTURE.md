# ============================================================
# NAMECARDMANAGER RELATIONSHIP TIMELINE ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

goal:
  - show same-company context
  - show introducer relationships
  - show project-related relationships
  - show order-related relationships
  - show company-level chronology of contact and activity

authoritative_sources:
  - namecard_record
  - namecard_relationship
  - namecard_order_history
  - namecard_recent_activity
  - publication_history
  - approval_history

derived_views:
  - person_relationship_view
  - company_timeline_view

policy:
  - confirmed relationships have highest priority
  - inferred relationships are allowed with lower confidence
  - company timeline may contain direct and derived events
  - UI must distinguish confirmed and inferred context
