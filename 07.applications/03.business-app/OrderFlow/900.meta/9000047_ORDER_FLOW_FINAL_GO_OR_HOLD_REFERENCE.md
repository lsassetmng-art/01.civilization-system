# ============================================================
# ORDER FLOW FINAL GO OR HOLD REFERENCE
# ============================================================

status: final-go-hold-reference
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest reference for future go/hold judgment.

go_or_hold_reference:
  current_state:
    - hold

  go_requires:
    - Sato review completed
    - Boss go decision exists
    - final SQL candidate approved
    - migration placement confirmed
    - RLS claim mapping confirmed

  hold_means:
    - design may stop here
    - execution may not start yet

