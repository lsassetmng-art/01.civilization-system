# ============================================================
# CIVILIZATION LIFE EVENT INTERVENTION ACTION MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-intervention-action

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTIONS
# ============================================================

intervention_actions:
- apply
- pay_fee
- submit_document
- buy_ticket_or_form
- request_household_support
- request_public_support
- choose_institution
- choose_route
- postpone
- withdraw
- appeal
- use_item
- emergency_escalation
- accept_offer
- reject_offer


# ============================================================
# 2. FINAL RULE
# ============================================================

Intervention actions
must be explicit and event-type bound.
