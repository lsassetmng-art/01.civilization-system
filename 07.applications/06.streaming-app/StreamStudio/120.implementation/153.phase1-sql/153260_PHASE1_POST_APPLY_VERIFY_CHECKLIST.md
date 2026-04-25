# ============================================================
# STREAM STUDIO PHASE 1 POST-APPLY VERIFY CHECKLIST
# ============================================================

status: sql-post-apply-checklist
layer: implementation-db-checklist
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the checklist immediately after real SQL apply.

required_checks:
- PERSONA_DATABASE_URL exported
- STREAM_STUDIO_SCHEMA matches applied schema
- table presence verify passed
- column shape verify passed
- index and FK verify passed
- runtime and audit queries executed
- no missing required table
- no missing required column
- no missing required index
- no missing required FK

review_notes:
- this bundle is read-only
- safe to rerun
- capture report under ~/.tmp for handoff evidence

fixed_statement:
Post-apply verification is complete only when all structural checks pass.
