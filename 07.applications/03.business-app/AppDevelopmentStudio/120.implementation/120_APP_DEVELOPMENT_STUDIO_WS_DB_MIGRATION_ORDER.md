# ============================================================
# APP DEVELOPMENT STUDIO WS-DB MIGRATION ORDER
# ============================================================

status: canonical-draft
layer: implementation
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero

purpose:
Defines recommended DB migration order.

recommended_order:
- step_01: review MVP DB DDL
- step_02: review speed-experience DDL
- step_03: apply base/core tables first
- step_04: apply speed quick-start / preview / starter-pack tables
- step_05: apply promotion table
- step_06: apply audit / notification tables
- step_07: apply indexes
- step_08: run structural verification queries
- step_09: confirm repository mapping targets

ordering_principles:
- base before additive
- core run tables before audit/notification tables
- table creation before index creation
- structural verification before repository coding
