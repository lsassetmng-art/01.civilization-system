# ============================================================
# MBO NEXT PHASE SWITCH NOTE
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides a short switch note
for moving between current implementation states.

switch_cases:

  case_01:
    name: before_wave_01_pass
    next_focus:
      - db apply
      - quickcheck
      - backend first slice
      - frontend first slice
      - acceptance

  case_02:
    name: after_wave_01_pass
    next_focus:
      - review flow
      - review acceptance
      - then evaluation flow

  case_03:
    name: after_wave_03_pass
    next_focus:
      - KPI/export/reminder
      - ERP flow
      - reopen governance

  case_04:
    name: restart_in_new_chat
    next_focus:
      - read restart set
      - confirm current wave
      - continue from recorded next action

