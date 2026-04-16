# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines customer-facing schedule architecture derived from WBS and proposal data.

architecture_position:
ProjectFlow must support not only internal WBS scheduling
but also customer-facing schedule output.

customer_facing_schedule_role:
- explanation-friendly schedule view
- simplified milestone and phase communication
- customer meeting material support
- spreadsheet-exportable external schedule view

source_inputs:
- confirmed project schedule
- WBS proposal data
- milestone data
- task grouping data
- customer-facing wording rules

separation_rules:
- internal operational WBS and customer-facing schedule must remain separable
- customer-facing schedule may hide internal-only task detail
- customer-facing schedule must preserve milestone visibility
- customer-facing schedule must remain editable before external use
