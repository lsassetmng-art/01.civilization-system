# ============================================================
# VALIDATION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines validation policy for QuickForecast.

validation_levels:
- blocking_error
- warning
- info

rules:
- blocking errors must prevent governed submission
- warnings may allow local save
- local draft save should be broader than enterprise submission allowance
- validation output must remain explainable to the user
