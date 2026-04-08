# ============================================================
# BACKUP POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

backup_modes:
- none
- recommended
- mandatory

recommended_usage:
- design draft apply: recommended
- code overwrite: recommended
- SQL execution: recommended or mandatory
- destructive SQL: mandatory
- Git push to important branches: recommended or mandatory

backup_targets:
- file
- folder
- package
- SQL candidate snapshot
- Git restore point
