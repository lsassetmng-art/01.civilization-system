# ============================================================
# PROJECT FLOW DATA OWNERSHIP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- each major field has a primary ownership interpretation
- ERP-owned reference fields are not treated as local editable truth
- local execution fields are not misclassified as ERP-owned
- sync status is not confused with business truth ownership
- localization keys are not confused with business truth
- common component display usage is not confused with field ownership
