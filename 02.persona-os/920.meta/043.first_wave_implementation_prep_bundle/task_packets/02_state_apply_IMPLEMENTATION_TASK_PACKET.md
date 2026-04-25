# state_apply IMPLEMENTATION TASK PACKET

status: implementation-prepared-pending-go
system: PersonaOS
target: state_apply
generated_at: 20260418_051824
implementation_order: 02

purpose:
implement canonical truth mutation, transition checks, and audit linkage

dependency_gate:
dependency=edge_apply_reviewed

exit_rule:
exit=review_approved

task_list:
- confirm pre_state, action_code, and post_state enums
- confirm allowed transition table
- confirm reject and conflict handling behavior
- confirm truth mutation touchpoint
- confirm audit evidence write order
- confirm concurrency conflict behavior

ready_to_start_when:
- GO decision is approved
- blocker register is cleared
- exact review result is pass or pass_with_minor_fix
- no unresolved naming conflict remains

completion_evidence_placeholder:
- started_at: pending
- completed_at: pending
- owner: pending
- evidence_note: pending

# BOUNDARY REVALIDATION TASK ADDENDUM

boundary_revalidated_at: 20260418_074159

boundary_tasks:
- confirm target stays inside PersonaOS truth boundary
- confirm target does not depend on direct external mutable truth access
- confirm release behavior uses snapshot and signature route where applicable
- confirm canonical, mirror, and cache roles stay distinct in this task
- stop immediately if a boundary contradiction is found during implementation-entry work
