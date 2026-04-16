# ============================================================
# PROJECT FLOW TEMPLATE AND SCHEDULING POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow should support project templates
for repeated project patterns.

template_may_include:
- project default structure
- task templates
- milestone templates
- issue or checklist templates
- relative schedule offsets

scheduling_policy:
A user may select:
- project type
- WBS template
- project start date

The system should generate a proposed schedule based on:
- template task structure
- dependency relations
- milestone templates
- relative date offsets
- business-day rules

final_rules:
- project creation from template must remain editable after generation
- generated schedules are proposals only
- human review and adjustment must remain possible before confirmation
