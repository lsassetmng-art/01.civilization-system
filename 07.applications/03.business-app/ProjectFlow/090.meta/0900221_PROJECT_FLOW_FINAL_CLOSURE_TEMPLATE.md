# ============================================================
# PROJECT FLOW FINAL CLOSURE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for final closure after RC and handoff completion.

template_fields:
- closure_date
- approved_done_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- handoff_documents
- restart_entry_documents
- final_notes

rules:
- closure must reflect approved reality only
- blocked scope must remain blocked explicitly
- deferred scope must not be mislabeled as done
- future sophistication must remain distinct from blocked scope
