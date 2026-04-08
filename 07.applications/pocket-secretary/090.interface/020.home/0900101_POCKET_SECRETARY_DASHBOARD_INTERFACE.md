# ============================================================
# POCKET SECRETARY DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
The dashboard is the primary entry interface of PocketSecretary.

primary areas:
- secretary presentation area
- current schedule summary
- todo summary
- reminder / alert area
- quick action area
- pending / sync state area

rules:
- dashboard must remain usable in local-first mode
- dashboard must surface pending and failed states honestly
- dashboard convenience must not bypass review-required actions
