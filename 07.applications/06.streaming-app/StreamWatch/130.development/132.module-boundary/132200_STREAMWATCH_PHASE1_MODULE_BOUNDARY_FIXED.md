# ============================================================
# STREAMWATCH PHASE1 MODULE BOUNDARY FIXED
# ============================================================

status: implementation-freeze
system: StreamingOS
app: StreamWatch
phase: phase1
owner: Boss
prepared_by: Zero

purpose:
Fix the internal implementation layering for the first executable
StreamWatch backend pass after exact payload freeze.

dependency_direction:
router -> service -> validator -> repository -> database_or_adapter

rules:
- router parses request, path params, and envelope only
- service owns viewer flow composition and CTA decisions
- validator owns input and context checks
- repository owns all direct database or adapter access
- repository never leaks raw database SDK objects upward
- additive only

phase1_db_backed_families:
- profile
- progress
- category_tree
- tv_handoff

phase1_projection_or_adapter_families:
- home_feed
- library
- entitlement
- purchase_quote
- purchase_execute
- rental_execute
- membership_join_execute
- search
- series_detail
- notifications
- follow_upsert
- saved_list_mutate
- watch_queue_mutate

fixed_tables:
- streaming.viewer_profile_records
- streaming.viewer_progress_states
- streaming.category_tree_nodes
- streaming.cast_handoff_sessions

note:
This bundle is honest about current table coverage. Routes that depend on
catalog, saved-state tables, or shared commerce truth are wired through
service and adapter stubs so the layering is frozen without pretending
those storage surfaces already exist.
