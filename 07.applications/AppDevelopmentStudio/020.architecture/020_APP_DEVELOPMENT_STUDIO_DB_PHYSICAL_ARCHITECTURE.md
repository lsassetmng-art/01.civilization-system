# ============================================================
# APP DEVELOPMENT STUDIO DB PHYSICAL ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines physical database design direction for implementation-ready storage.

physical_design_principles:
- additive-friendly
- audit columns on major tables
- explicit PK/FK
- index on operational lookup paths
- enum-like status fields normalized where useful
- link tables for many-to-many relations
- secret reference separation from visible metadata

recommended_schema_groups:
- core request / proposal
- rules / settings
- component catalog
- connection profiles
- generation readiness
- Git
- test / progress
- bug / version
- multilingual
- audit
