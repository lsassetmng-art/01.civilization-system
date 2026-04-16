# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ERP-facing import depends on BusinessOS mediation
- ERP-facing export depends on BusinessOS mediation
- sync retry depends on BusinessOS mediation
- local customer-facing material generation does not depend on BusinessOS
- local template/WBS proposal does not depend on BusinessOS
- local multilingual UI handling does not depend on BusinessOS
- boundary leakage into local screen logic is avoided
