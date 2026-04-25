# ============================================================
# ASSET PUBLISH SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K2 asset-publish.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

archive_asset_decisions_to_close:
- exact SQL type set for archive ids, FKs, and title/description fields
- exact numeric type for duration_seconds
- exact storage strategy for category_tags
- exact timestamp type for published_at
- exact check implementation for visibility/publication/review/governance/age/monetization states

clip_asset_decisions_to_close:
- exact SQL type set for clip ids and lineage/provenance references
- exact numeric type for clip_start_seconds and clip_end_seconds
- exact constraint strategy for clip range validation
- exact storage strategy for category_tags
- exact check implementation for state families

external_publish_decisions_to_close:
- exact polymorphic publish source storage strategy
- exact target account reference storage type
- exact override field type strategy
- exact timestamp type for scheduled/dispatch/result times
- exact check implementation for job/dispatch/result states

constraint_and_index_decisions_to_close:
- final FK actions for archive/clip/session relations
- minimal index sets for asset lookup and publication queries
- minimal index sets for publish job state/timing queries
- partial index deferral vs immediate introduction

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
