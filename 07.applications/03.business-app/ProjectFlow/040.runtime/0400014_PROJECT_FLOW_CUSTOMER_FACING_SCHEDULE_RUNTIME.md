# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- customer-facing schedule is generated from WBS or confirmed schedule context
- internal-only detailed tasks may be omitted from customer-facing output
- customer-facing schedule should emphasize phase, milestone, and target dates
- wording should remain explanation-friendly
- generated customer-facing schedule must remain editable before external use

state_rules:
- proposal-derived customer-facing schedule remains draft until reviewed
- confirmed operational schedule may generate customer-facing schedule snapshots
