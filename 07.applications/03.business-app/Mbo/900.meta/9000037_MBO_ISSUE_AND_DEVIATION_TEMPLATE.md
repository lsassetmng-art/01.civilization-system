# ============================================================
# MBO ISSUE AND DEVIATION TEMPLATE
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides a template for recording issues,
bugs, blockers, and design deviations during implementation.

record_template:
- record_id:
- date:
- area:
- type:
- severity:
- related_task_id:
- related_file:
- summary:
- observed_behavior:
- expected_behavior:
- root_cause_hypothesis:
- temporary_workaround:
- design_impact:
- needs_design_change:
- decision_status:
- owner:
- next_action:

type_candidates:
- bug
- blocker
- implementation_gap
- contract_mismatch
- design_deviation
- performance_issue
- auth_issue
- data_issue

severity_candidates:
- low
- medium
- high
- critical

decision_status_candidates:
- open
- under_review
- approved_fix
- rejected_change
- resolved

rule:
Do not silently change fixed design.
Any deviation from fixed design must be recorded here first.
