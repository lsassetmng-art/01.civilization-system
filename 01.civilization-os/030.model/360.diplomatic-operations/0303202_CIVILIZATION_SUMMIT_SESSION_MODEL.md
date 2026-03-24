# ============================================================
# CIVILIZATION SUMMIT SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical summit session model.

model_type:
- diplomatic coordination truth model

primary_key:
- summit_session_id

natural_key:
- session_scope
- session_code
- session_version

fields:
- summit_session_id
- session_scope
- session_code
- session_version
- session_status
- host_scope
- participant_summary
- agenda_summary
- opened_at
- closed_at
- created_at
- updated_at

session_status_enum:
- scheduled
- active
- concluded
- cancelled
- archived

contract_version_rule:
Summit sessions must expose explicit version semantics.

truth_boundary:
Summit-session truth belongs to CivilizationOS diplomatic-operations domain.
