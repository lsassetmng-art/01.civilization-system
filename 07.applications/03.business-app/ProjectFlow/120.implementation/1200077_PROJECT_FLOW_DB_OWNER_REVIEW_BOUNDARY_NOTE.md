# ============================================================
# PROJECT FLOW DB OWNER REVIEW BOUNDARY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Clarifies which remaining items require DB-owner review
rather than ordinary implementation-direction decision.

db_owner_review_required_items:
- final schema confirmation
- migration hardening order
- RLS execution design
- final constraint hardening rollout
- trigger rollout sequencing

rule:
These items remain intentionally outside ordinary app-local finalization.
They should be resolved in DB-owner review flow,
not by silent local closure.
