# ============================================================
# LIFE OS EXTERNAL SYNC BOUNDARY
# ============================================================

status: canonical
layer: 060.integration
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define allowable external synchronization scope and limits.

allowed_targets:
- user-facing applications
- approved calendar linkage
- approved notification modules
- approved summary consumers

forbidden_targets:
- unrestricted public export
- persona raw-state overwrite
- business financial mutation
- cross-user data merge

boundary_principles:
- least necessary data
- explicit contract only
- auditability
- user-life privacy protection
