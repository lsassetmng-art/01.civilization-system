# ============================================================
# BACKUP RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime handling of backup creation.

backup_trigger_examples:
- before apply
- before SQL execution
- before Git push
- before destructive or high-risk action

runtime_steps:
1. inspect backup mode
2. determine backup target set
3. generate backup or restore point
4. attach backup record to execution context
5. fail or warn according to policy if backup unavailable
