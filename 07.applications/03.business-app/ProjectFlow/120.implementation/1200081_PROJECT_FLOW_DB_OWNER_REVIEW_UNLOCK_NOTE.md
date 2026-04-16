# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for using DB-owner review results safely.

implementation_rules:
- use explicit DB-owner review result as the source for unlock decisions
- partial confirmation should be mapped area by area
- unlocked DB areas may proceed into deeper planning only after result recording
- blocked DB areas must remain visible in implementation-prep notes
