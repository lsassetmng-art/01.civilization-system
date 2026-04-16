# ============================================================
# MBO POST PASS EXPANSION ORDER
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines expansion order after first-slice pass.

post_pass_order:

  wave_02:
    focus:
      - review schedule
      - bulk review schedule
      - review log
      - manager comment template usage
    reason:
      - next highest business value after core execution continuity

  wave_03:
    focus:
      - evaluation draft
      - evaluation confirm
      - final lock UX
      - calibration support
    reason:
      - completes controlled evaluation lifecycle

  wave_04:
    focus:
      - KPI dashboard full
      - executive summary
      - export jobs
      - reminder batch jobs
    reason:
      - summary and operator efficiency become meaningful after core flows stabilize

  wave_05:
    focus:
      - ERP history
      - ERP resend control
      - ERP outbound execution path
    reason:
      - ERP path should follow stable lock/evaluation behavior

  wave_06:
    focus:
      - reopen request
      - reopen approval
      - reopen execution
      - ERP impact note
    reason:
      - most governance-heavy path
      - should come after ordinary lifecycle is trusted

expansion_rule:
Do not start a later wave
when an earlier wave contains unresolved critical defects.

