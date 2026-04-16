# ============================================================
# PROJECT FLOW MASTER_RESTART_NOTE_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for a master restart note
to be used in the next chat or next phase.

template_fields:
- restart_note_date
- current_phase_position
- confirmed_scope
- blocked_scope
- deferred_scope
- next_recommended_bundle
- key_reference_documents
- restart_warning_points
- notes

restart_rules:
- restart note should begin from confirmed scope
- blocked scope should remain explicit
- warning points should highlight where silent reopening is forbidden
