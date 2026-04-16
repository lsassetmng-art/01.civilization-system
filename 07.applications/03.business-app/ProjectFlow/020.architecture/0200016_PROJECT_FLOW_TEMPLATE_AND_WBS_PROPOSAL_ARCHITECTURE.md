# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for project templates
and WBS-template-based scheduling proposals.

major_domains:
- project template
- template task structure
- milestone template support
- dependency template support
- business-day rule support
- schedule proposal generation
- proposal adjustment and confirmation

project_template_architecture:
Project templates represent repeated project patterns
for common delivery or operational work.

template_structure_may_include:
- project default structure
- task templates
- milestone templates
- issue/checklist templates
- relative start offsets
- planned duration rules
- dependency relations

wbs_proposal_architecture:
A user selects:
- project type
- project template
- project start date
- optional business-day rule

The system generates:
- proposed task schedule
- proposed milestone schedule
- dependency-aware ordering
- projected completion view

boundary_rules:
- template is a reusable pattern source
- generated schedule is proposal-only until confirmed
- proposal must remain human-editable
- confirmed schedule becomes normal project/task operational data
