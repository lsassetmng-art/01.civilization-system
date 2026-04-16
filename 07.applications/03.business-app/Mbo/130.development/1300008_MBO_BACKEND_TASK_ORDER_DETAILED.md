# ============================================================
# MBO BACKEND TASK ORDER DETAILED
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Breaks backend work into concrete ordered tasks.

ordered_tasks:
- confirm API envelope implementation
- confirm auth claim mapping
- confirm role resolution
- implement objective list query
- implement objective detail query
- implement create objective command
- implement update objective command
- implement activate objective command
- implement action plan list query
- implement action plan create command
- implement progress log list query
- implement progress log create command
- implement dashboard summary query
- implement common validation/error handling
- implement lock rejection handling
- implement pagination/filter baseline
- add tests for first slice
- expand to review flow
- expand to evaluation flow
- expand to ERP/governance flow

done_definition_for_ordered_tasks:
- endpoint responds in exact envelope
- role guard works
- company scope works
- DB query uses fixed views/tables correctly
- tests or verification scripts exist
