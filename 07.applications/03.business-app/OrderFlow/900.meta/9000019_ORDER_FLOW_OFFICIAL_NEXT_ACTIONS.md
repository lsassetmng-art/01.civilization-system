# ============================================================
# ORDER FLOW OFFICIAL NEXT ACTIONS
# ============================================================

status: draft-next-actions
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Lists the official next actions from the current OrderFlow state.

official_next_actions:
  highest_priority:
    - receive and reflect Sato review
    - decide whether to refine seed SQL further
    - decide whether to start InvoiceFlow receiver-side exact work

  if_moving_toward_execution:
    - confirm Boss go decision
    - finalize migration placement
    - finalize RLS claim mapping
    - revise SQL candidates into approved execution bundle

  if_moving_toward_cross-app integration:
    - continue InvoiceFlow side exact design
    - later connect billing-ready rule and duplicate prevention policy

  if_moving_toward shared design:
    - start separate chat for exact common component design

