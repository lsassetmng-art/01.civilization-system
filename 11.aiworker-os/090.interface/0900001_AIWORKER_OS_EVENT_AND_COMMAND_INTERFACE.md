# ============================================================
# AIWORKER OS EVENT AND COMMAND INTERFACE
# ============================================================

status: canonical
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

command_surfaces:
- worker_command_row
- worker_draft_row
- worker_staging_row
- worker_official_intake_row
- controlled_write_function

interface_examples:
- BUSINESS_DISPATCH_REQUEST_ACCEPTED
- BUSINESS_DISPATCH_REQUEST_REJECTED
- AIWORKER_ASSIGNMENT_CREATED
- AIWORKER_ASSIGNMENT_ESCALATED
- AIWORKER_EXECUTION_SUMMARY_PUBLISHED
- AIWORKER_REPAIR_REQUIRED
- AIWORKER_REBUILD_REQUIRED
- AIWORKER_RESTRICTION_UPDATED

interface_rule:
Commands are accepted only through controlled surfaces.
Events are summary-safe outward signals, not raw-table leaks.

final_rule:
AiworkerOS interfaces are explicit, narrow, and audit-ready.
