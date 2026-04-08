# ============================================================
# PRO APPROVAL / SUBMISSION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval and submission UI.

main_sections:
- target selector
- approval state
- submission readiness
- payload summary
- result history
- retry / resend visibility

requirements:
- Basic users must not access governed submission controls
- approval and submission must be clearly separated
- failed state must remain visible
