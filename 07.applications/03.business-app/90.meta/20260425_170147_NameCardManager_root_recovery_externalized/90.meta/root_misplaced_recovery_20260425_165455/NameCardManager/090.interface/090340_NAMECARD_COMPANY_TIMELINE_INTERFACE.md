# ============================================================
# NAMECARD COMPANY TIMELINE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

sections:
  - company_header
  - key_people_summary
  - timeline_filter_bar
  - timeline_event_list
  - inferred_event_toggle
  - quick_jump_to_relationships
  - quick_jump_to_recent_activity

event_card_fields:
  - event_at
  - summary_label
  - source_badge
  - related_person_badges
  - inferred_badge_if_needed
  - detail_excerpt
  - deep_link_action

rules:
  - newest first by default
  - compact on mobile
  - richer context on tablet and pc
  - inferred events must be visually distinct
