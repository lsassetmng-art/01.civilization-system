# ============================================================
# MBO IMPLEMENTATION TO ACCEPTANCE FLOW
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides a simple end-to-end flow
from implementation work to acceptance.

flow:
design_fixed
-> database_applied
-> sample_data_applied
-> quickcheck_completed
-> backend_first_slice_ready
-> frontend_first_slice_ready
-> first_slice_acceptance_run
-> blocker_resolution_if_needed
-> acceptance_pass
-> expansion_to_wave_02

work_management_rule:
- do not jump to later waves before first slice is verified
- do not reopen fixed design unless deviation is formally recorded
- do not mix common-component redesign into Mbo implementation work

recommended_team_sync_points:
- after DB apply
- after backend first slice
- after frontend first slice
- after acceptance run

