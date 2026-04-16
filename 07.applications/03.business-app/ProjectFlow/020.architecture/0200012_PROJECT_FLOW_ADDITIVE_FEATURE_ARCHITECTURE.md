# ============================================================
# PROJECT FLOW ADDITIVE FEATURE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture additions for new functional areas.

additive_feature_groups:
- form intake
- lightweight automation
- timeline and gantt
- live dashboard enhancement
- memo and meeting note
- short comment history
- project template
- WBS scheduling proposal

architecture_notes:

form_intake:
Supports simplified structured input
for task creation,
issue registration,
and progress report request.

lightweight_automation:
Supports event-triggered notification and simple rule-based actions
without turning ProjectFlow into a heavy automation platform.

timeline_and_gantt:
Strengthens milestone and dependency visibility
with schedule-oriented operational view.

live_dashboard_enhancement:
Aggregates progress,
delay,
time actual,
workload,
risk,
and sync failures into a unified daily view.

memo_and_meeting_note:
Stores project-linked notes,
decisions,
and meeting records as operational context.

short_comment_history:
Stores lightweight thread-like communication
on tasks,
issues,
and project-level items.

project_template:
Allows repeated project patterns to be reused.

wbs_scheduling_proposal:
Generates schedule proposals from template task structure,
dependencies,
milestones,
relative offsets,
and business-day rules.

boundary_rules:
- generated schedules are proposals only
- human review and adjustment are mandatory before confirmation
- project-specific semantics remain editable after generation
