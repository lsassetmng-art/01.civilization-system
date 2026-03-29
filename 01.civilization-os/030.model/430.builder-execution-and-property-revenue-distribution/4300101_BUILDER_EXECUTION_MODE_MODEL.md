# ============================================================
# BUILDER EXECUTION MODE MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: builder-execution-mode

owner: Boss
prepared_by: Zero


# EXECUTION MODES

builder_execution_modes:
- auto_system_execution
- approval_required_execution
- blocked_execution


# RULE

default_execution_mode:
- auto_system_execution

Only approval-required categories
may enter approval_required_execution.


# FINAL RULE

Builder execution mode
must be explicit and user-visible.
