# ============================================================
# AIWORKER RUNTIME SURFACE AND LANE ARCHITECTURE EXACT
# ============================================================

status: exact-design
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Freeze runtime lanes, read families, and write surfaces.

runtime_lanes:
- OBSERVE
- ADVISE
- DRAFT
- STAGING
- OFFICIAL_REQUEST
- OFFICIAL_APPLY
- AUDIT_ONLY
- REPAIR
- REBUILD

lane_meaning:
- OBSERVE: read only, no proposal required
- ADVISE: read and explain, no write
- DRAFT: creates reversible draft rows only
- STAGING: prepares structured candidate data for review
- OFFICIAL_REQUEST: submits official intake for controlled application
- OFFICIAL_APPLY: restricted to controlled function execution only
- AUDIT_ONLY: records audit and review conclusions
- REPAIR: worker remediation path
- REBUILD: controlled reset or reconstruction path

allowed_surface_families:
read_surface:
- cx22073jw view family only

write_surface:
- command row
- draft row
- staging row
- official intake table
- controlled function

forbidden_surface:
- direct insert into aiworker business-truth tables
- direct update to raw worker truth by AI worker actor
- direct delete on worker-truth tables by rank-based privilege
