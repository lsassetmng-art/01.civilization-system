# ============================================================
# NAMECARDMANAGER RELATIONSHIP AND TIMELINE QUERY BEHAVIOR NOTE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: relationship-and-timeline-query-behavior

purpose:
Summarizes the current repository-side query behavior after JDBC fill-in.

relationship_query_behavior:
- source_namecard_id required
- include_unconfirmed=false excludes rows where user_confirmed is false
- include_same_company=false excludes relationship_type same_company
- include_external_targets=false excludes target_entity_type external_entity
- paging token currently behaves as numeric offset

company_timeline_query_behavior:
- company_id required
- include_unconfirmed=false excludes rows where user_confirmed is false
- include_internal_events=false excludes rows where evidence_source resolves to internal
- include_external_events=false excludes rows where evidence_source resolves to external
- paging token currently behaves as numeric offset

capture_write_behavior:
- capture session insert writes into business.namecard_capture_session_support
- image staging insert writes into business.namecard_image_staging_support
- app-share and ERP-public separation remain explicit in stored boundary codes

note:
- audit persistence is still deferred to a future additive audit-row step
- current audit adapter logs safely without blocking repository behavior
