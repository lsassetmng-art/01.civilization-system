# ============================================================
# PROJECT FLOW ERP DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- ProjectFlow does not directly call ERP
- ERP-owned truth is not locally re-owned by ProjectFlow
- ERP-facing import/export remains BusinessOS-mediated
- local customer-facing outputs do not require ERP direct dependency
- local template/WBS proposal does not require ERP direct dependency
- local UX remains separable from ERP-mediated boundary failures
