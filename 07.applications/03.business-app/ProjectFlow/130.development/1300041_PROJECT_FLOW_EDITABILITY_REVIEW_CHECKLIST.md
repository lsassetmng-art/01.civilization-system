# ============================================================
# PROJECT FLOW EDITABILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- local operational fields are marked editable where intended
- ERP formal reference fields are not exposed as local editable truth
- derived values are not mistaken for editable source values
- mediated sync fields are not mistaken for business edit targets
- draft and proposal adjustment flows remain explicit
- UI can distinguish editable and reference-only states clearly
