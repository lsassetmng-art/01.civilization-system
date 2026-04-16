# ============================================================
# MBO IMPLEMENTATION PASS DECISION RULE
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines pass decision rules
for implementation progression and restart handling.

decision_points:
- wave_01_pass_decision
- later_wave_pass_decision
- restart_safe_decision
- closure_safe_decision

wave_01_pass_decision:
  pass_when:
    - database_apply_completed
    - sample_data_apply_completed
    - quickcheck_completed
    - backend_first_slice_passed
    - frontend_first_slice_passed
    - cross_flow_acceptance_passed
    - critical_issues_zero
    - no unapproved design deviation remains
  fail_when:
    - any required first-slice flow fails
    - lock behavior breaks
    - response contract breaks
    - scope drift breaks first-slice focus

later_wave_pass_decision:
  pass_when:
    - current_wave_scope_completed
    - current_wave_acceptance_passed
    - critical_issues_zero
    - earlier-wave regression not detected
  fail_when:
    - current wave has unresolved critical defect
    - earlier stable flow regresses
    - governance rule weakens

restart_safe_decision:
  restart_safe_when:
    - current wave and blockers are recorded
    - current pass/fail position is recorded
    - deviation records are up to date
    - restart file set is identified
  restart_unsafe_when:
    - active work is unrecorded
    - scope is drifting without ledger/update

closure_safe_decision:
  closure_safe_when:
    - current wave result is recorded
    - next recommended action is recorded
    - restart path is recorded
  closure_unsafe_when:
    - state is ambiguous
    - pass/fail is ambiguous
    - next step is ambiguous

