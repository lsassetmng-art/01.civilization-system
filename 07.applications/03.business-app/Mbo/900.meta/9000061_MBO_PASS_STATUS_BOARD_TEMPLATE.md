# ============================================================
# MBO PASS STATUS BOARD TEMPLATE
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides a compact pass-status board
for the current implementation state.

status_board_template:
- current_wave:
- current_wave_status:
- db_apply_status:
- seed_status:
- sample_data_status:
- quickcheck_status:
- backend_slice_status:
- frontend_slice_status:
- cross_flow_status:
- critical_issue_count:
- medium_issue_count:
- approved_deviation_count:
- current_decision:
- next_action:
- restart_safe:
- closure_safe:

current_decision_candidates:
- continue_current_wave
- block_and_fix
- review_ready
- pass_and_promote
- safe_to_restart
- safe_to_close

