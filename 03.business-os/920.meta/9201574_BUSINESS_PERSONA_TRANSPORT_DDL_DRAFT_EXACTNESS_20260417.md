# ============================================================
# BUSINESS PERSONA TRANSPORT DDL DRAFT EXACTNESS
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix implementation-ready DDL draft exactness expectations for Business-origin persona transport structures.

ddl_target_structures:
- business_persona_event_outbox
- business_persona_event_consumer_checkpoint
- business_persona_event_deadletter
- business_persona_event_replay_request
- business_persona_event_replay_execution

ddl_exactness_rule:
- DDL drafts must preserve the already-fixed exact schema contracts.
- DDL drafts must preserve unique identity for event_id / idempotency semantics.
- DDL drafts must preserve replayability and dead-letter inspection needs.
- DDL drafts must not weaken Business truth identity or downstream traceability.

minimum_ddl_quality_bar:
- primary keys explicit
- required uniques explicit
- retry and delivery indexes explicit
- timestamps explicit
- status enums or constrained text fields explicit
- json/jsonb payload fields explicit where payload preservation is required

result:
- Transport DDL draft exactness fixed as a canonical meta record.
