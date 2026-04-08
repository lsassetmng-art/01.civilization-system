# ============================================================
# SUBMISSION INTEGRITY SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for governed submission.

rules:
- target identity must be resolved before submission
- submission payload must be attributable to source draft state
- approval-required payload must not bypass approval
- success display must match actual result state
