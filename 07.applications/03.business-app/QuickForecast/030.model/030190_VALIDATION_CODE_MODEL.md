# ============================================================
# VALIDATION CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines validation code families for QuickForecast.

validation_families:
- forecast_input_validation
- scenario_validation
- action_validation
- proposal_validation
- profit_preview_validation
- approval_validation
- submission_validation

principles:
- codes must be stable
- codes must be human-reviewable
- codes must be UI-displayable
- blocking and warning levels must be distinguishable
