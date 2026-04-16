# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- unified customer explanation material selector
- material-specific generation adapters
- wording override support
- export packaging support

implementation_rules:
- materials may reuse shared source data
- each output type must remain independently exportable
- standard material set should be easily accessible from project context
