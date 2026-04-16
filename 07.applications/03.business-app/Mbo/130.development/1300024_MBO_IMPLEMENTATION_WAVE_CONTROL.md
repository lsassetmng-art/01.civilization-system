# ============================================================
# MBO IMPLEMENTATION WAVE CONTROL
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines control rules for implementation waves.

wave_control_principles:
- finish earlier wave before expanding later wave
- critical defects block wave promotion
- design deviation must be recorded before any design change
- governed lock and reopen rules must not be weakened during implementation

waves:

  wave_01:
    name: core CRUD and execution start
    scope:
      - objective core
      - action plan core
      - progress core
      - dashboard summary shell
    start_condition:
      - DB applied
      - sample data applied
      - quick-check runnable
    done_condition:
      - first-slice acceptance passes

  wave_02:
    name: review flow
    scope:
      - review schedule
      - bulk review schedule
      - review log
      - manager comment template usage
    start_condition:
      - wave_01 pass gate passed
    done_condition:
      - review flow end-to-end passes
      - overdue/upcoming logic verified

  wave_03:
    name: evaluation flow
    scope:
      - evaluation draft
      - evaluation confirm
      - final lock UX
      - calibration
    start_condition:
      - wave_02 stable
    done_condition:
      - confirm creates lock
      - locked normal edit path blocked
      - calibration path visible

  wave_04:
    name: summary and jobs
    scope:
      - KPI dashboard
      - executive summary
      - export jobs
      - reminder batch jobs
    start_condition:
      - wave_03 stable
    done_condition:
      - aggregates trustworthy
      - jobs auditable

  wave_05:
    name: ERP flow
    scope:
      - ERP history
      - ERP resend control
      - ERP outbound execution
    start_condition:
      - wave_03 stable
    done_condition:
      - ERP failure path visible
      - resend path auditable

  wave_06:
    name: reopen governance
    scope:
      - reopen request
      - reopen approval
      - reopen execution
      - ERP impact notes
    start_condition:
      - wave_05 stable
    done_condition:
      - governed reopen flow passes
      - history retention verified

promotion_rule:
A wave may be promoted only when:
- acceptance checks pass
- critical issues are zero
- design deviation records are resolved or explicitly approved

