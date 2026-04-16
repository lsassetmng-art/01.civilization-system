# ============================================================
# PROJECT FLOW FINAL_HANDOFF_SUMMARY_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for producing a final handoff summary
after closure decision is recorded.

template_fields:
- handoff_date
- current_confirmed_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- key_entry_documents
- key_restart_documents
- recommended_next_start
- notes

handoff_rules:
- handoff must be concise and restart-friendly
- handoff must point to concrete entry documents
- handoff must separate done,
  deferred,
  blocked,
  and future scope explicitly
