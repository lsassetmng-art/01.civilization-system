# ============================================================
# SESSION TRANSITION PRECONDITION MATRIX DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K1-002

decision:
The session transition matrix is fixed as follows.

canonical_lifecycle_states:
- draft
- scheduled
- live
- paused
- ended
- archived
- cancelled

canonical_transition_actions:
- schedule
- open_live
- pause
- resume
- end
- archive
- cancel

precondition_matrix:

schedule:
- allowed_from:
  - draft
- requires:
  - scheduled_start_at present
  - visibility_state present
  - actor authority valid
- forbidden_when:
  - governance_block_flag = true

open_live:
- allowed_from:
  - draft
  - scheduled
- requires:
  - actor authority valid
  - governance_block_flag = false
- recommended_gate:
  - publish_ready_flag should be true unless explicit support-path override exists

pause:
- allowed_from:
  - live
- requires:
  - actor authority valid

resume:
- allowed_from:
  - paused
- requires:
  - actor authority valid
  - governance_block_flag = false

end:
- allowed_from:
  - live
  - paused
- requires:
  - actor authority valid

archive:
- allowed_from:
  - ended
- requires:
  - actor authority valid

cancel:
- allowed_from:
  - draft
  - scheduled
- requires:
  - actor authority valid
- forbidden_when:
  - current state is live
  - current state is paused
  - current state is ended
  - current state is archived

resulting_state_map:
- schedule -> scheduled
- open_live -> live
- pause -> paused
- resume -> live
- end -> ended
- archive -> archived
- cancel -> cancelled

audit_rule:
- every transition must record transition_action
- every transition must record actor basis
- reason_code remains optional at meaning level but should be supported
- support-path override must remain explicit and auditable

canonical_effect:
K1 session auth / RLS and K1 session exact payload must be read with this matrix as the authority baseline.
