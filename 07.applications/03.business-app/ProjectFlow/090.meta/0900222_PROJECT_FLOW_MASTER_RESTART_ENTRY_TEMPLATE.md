# ============================================================
# PROJECT FLOW MASTER RESTART ENTRY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for restart entry after final closure.

template_fields:
- restart_point_name
- current_confirmed_scope
- blocked_scope
- deferred_scope
- next_recommended_start
- key_reference_documents
- notes

rules:
- restart entry should be short and operational
- restart should begin from confirmed scope
- blocked scope should remain explicit
