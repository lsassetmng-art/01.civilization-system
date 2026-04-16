# ============================================================
# SPEED EXPERIENCE PHYSICAL SCHEMA GUIDE
# ============================================================

status: canonical-draft
layer: development
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Provides development guidance for speed-experience physical schema design.

development_notes:
- separate run tables from audit tables
- preserve mode distinction explicitly
- do not merge notification records into audit records
- prefer reconstructable preview storage
- keep governed linkage queryable
