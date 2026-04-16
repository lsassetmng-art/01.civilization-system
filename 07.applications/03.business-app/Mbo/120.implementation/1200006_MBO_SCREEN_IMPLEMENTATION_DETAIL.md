# ============================================================
# MBO SCREEN IMPLEMENTATION DETAIL
# PRIORITY A + B
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

implementation_notes:
- all screens must support multilingual resource handling
- all screens must support iphone, android, pc, and tablet layouts
- read-only vs editable states must be explicit
- finalized records must visually indicate lock state

screen_state_rules:
- draft objectives are editable
- active objectives are partially editable according to role
- finalized evaluations are read-only except ERP-side status visibility
- executive summary is always read-only

validation_focus_by_screen:
- objective_create_edit: required fields and period-open validation
- progress_update: progress range validation and objective status validation
- review_schedule: reviewer and schedule-time validation
- review_log: review result and timestamp validation
- evaluation_confirm: final confirmation and lock validation
- aggregation_export: scope and format validation
- ERP_resend_control: resend reason required
- reminder_batch_send: reminder target scope validation
