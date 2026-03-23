# ============================================================
# LIFE OS STORAGE LAYOUT
# ============================================================

status: canonical
layer: 110.infrastructure
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define storage layout and persistence boundaries for Life OS.

storage_zones:
- primary_life_records
- derived_summaries
- operational_logs
- sync_logs
- temporary_processing_area
- backup_or_snapshot_area

layout_rules:
- primary records and derived summaries must be separable
- logs must not silently become source of truth
- temporary areas must remain disposable
- backup location and restore path must be explicit
