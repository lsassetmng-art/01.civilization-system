# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the first-wave actual implementation task structure
after coding-start planning outputs are approved.

task_groups:
- module skeleton tasks
- screen state-holder tasks
- viewmodel boundary tasks
- customer material flow tasks
- repository contract tasks
- gateway contract tasks
- cache and sync surface tasks

architecture_rules:
- actual implementation tasks must remain narrower than coding-start packages
- local tasks should come before most boundary-aware tasks
- blocked or unresolved boundary-sensitive scope must remain excluded
- task grouping should preserve module ownership explicitly
