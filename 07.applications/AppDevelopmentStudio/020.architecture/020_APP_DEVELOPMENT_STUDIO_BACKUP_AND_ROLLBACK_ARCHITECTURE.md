# ============================================================
# BACKUP AND ROLLBACK ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
application: App Development Studio

backup_targets:
- files
- folders
- packages
- SQL candidates
- Git restore points

rollback_sources:
- file snapshot
- bundle snapshot
- Git state
- linked rollback candidate

principle:
Backup and rollback are integrated into execution control,
not separate emergency-only concepts.
