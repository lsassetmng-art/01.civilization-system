# ============================================================
# ORDER FLOW PROPOSAL AND SHIPMENT SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screens for proposal, response recording,
shipment request, and shipment status visibility.

# ============================================================
# 1. inventory_check_screen
# ============================================================

inventory_check_screen:
  purpose:
    - record fulfillment-context inventory confirmation
  must_show:
    - order summary
    - line quantities
    - latest inventory source summary
    - freshness indication
    - availability result
  allowed_actions:
    - record inventory check
    - re-check inventory
    - attach note
  notes:
    - must distinguish fresh / cached / stale understanding

# ============================================================
# 2. lead_time_calculation_screen
# ============================================================

lead_time_calculation_screen:
  purpose:
    - calculate and record lead time basis
  must_show:
    - source inventory summary
    - supply status summary
    - lead time result
    - calculation basis
  allowed_actions:
    - calculate
    - recalculate
    - store result
  notes:
    - lead time is internal basis, not customer proposal itself

# ============================================================
# 3. delivery_candidate_screen
# ============================================================

delivery_candidate_screen:
  purpose:
    - compare and review delivery schedule candidates
  must_show:
    - candidate list
    - candidate date or range
    - confidence type
    - basis note
    - internal preferred candidate
  allowed_actions:
    - generate candidates
    - compare candidates
    - choose internal confirmed basis
  notes:
    - tablet / PC should benefit strongly here

# ============================================================
# 4. customer_proposal_screen
# ============================================================

customer_proposal_screen:
  purpose:
    - create and record delivery proposal to customer
  must_show:
    - chosen candidate
    - proposal target date or range
    - proposal note
    - proposal history summary
  allowed_actions:
    - create proposal
    - revise proposal
    - record proposal as sent or presented
  notes:
    - initial phase may support internal manual proposal recording only

# ============================================================
# 5. proposal_history_screen
# ============================================================

proposal_history_screen:
  purpose:
    - show chronological proposal attempts
  must_show:
    - proposal timestamp
    - proposed content
    - responder context if any
    - outcome label
  allowed_actions:
    - view details
    - open related response record

# ============================================================
# 6. customer_response_record_screen
# ============================================================

customer_response_record_screen:
  purpose:
    - record accepted / rejected / revision requested response
  must_show:
    - latest proposal summary
    - response type
    - response date
    - operator note
  allowed_actions:
    - record acceptance
    - record rejection
    - record revision request
  notes:
    - manual internal recording is allowed in initial design

# ============================================================
# 7. shipment_request_screen
# ============================================================

shipment_request_screen:
  purpose:
    - create a shipment request for full or partial scope
  must_show:
    - order summary
    - shippable line scope
    - requested quantity per line
    - shipment instruction note
    - target execution destination if available
  allowed_actions:
    - create request
    - save draft request if policy allows
  notes:
    - partial shipment must be visible at line level

# ============================================================
# 8. shipment_request_detail_screen
# ============================================================

shipment_request_detail_screen:
  purpose:
    - inspect one shipment request in detail
  must_show:
    - shipment request number
    - request scope
    - request status
    - request lines
    - response result
    - linked shipment execution if any
  allowed_actions:
    - update request status
    - record acceptance or rejection
    - open shipment execution record

# ============================================================
# 9. shipment_status_board_screen
# ============================================================

shipment_status_board_screen:
  purpose:
    - show shipment progress across request scope
  must_show:
    - request list
    - shipment status by request
    - partially shipped indicator
    - remaining shipment scope
  allowed_actions:
    - open request detail
    - move to execution record
  notes:
    - PC and tablet should show dense visibility here

