# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for inventory check, lead time,
delivery candidate, and customer proposal flow.

operator_action_matrix:

  inventory_check_screen:
    primary_goal:
      - confirm fulfillment-context inventory condition
    read:
      - order lines
      - requested quantities
      - latest inventory reference summary
    write:
      - inventory status
      - freshness type
      - source type
      - summary note
    actions:
      - record_inventory_check
      - recheck_inventory
      - save_note
    success_result:
      - order reaches inventory_checked
    blocked_when:
      - inventory source context missing
      - order not execution-ready

  lead_time_calculation_screen:
    primary_goal:
      - record lead time basis for delivery planning
    read:
      - inventory check result
      - supply understanding
    write:
      - lead time days
      - lead time basis type
      - lead time note
    actions:
      - calculate_lead_time
      - recalculate_lead_time
      - save_result
    success_result:
      - lead time record stored
    blocked_when:
      - no usable inventory understanding exists

  delivery_candidate_screen:
    primary_goal:
      - generate and compare delivery schedule candidates
    read:
      - lead time result
      - requested delivery hint
      - candidate list
    write:
      - calculation input note
      - internal preferred candidate decision
    actions:
      - generate_candidates
      - compare_candidates
      - choose_internal_candidate
    success_result:
      - order reaches delivery_date_calculated
    blocked_when:
      - lead time basis absent
      - candidate generation input invalid

  customer_proposal_screen:
    primary_goal:
      - create and record customer-facing delivery proposal
    read:
      - chosen candidate
      - proposal history summary
    write:
      - proposal date or range
      - proposal note
      - proposal channel type
    actions:
      - create_proposal
      - revise_proposal
      - mark_as_presented
    success_result:
      - order reaches customer_proposed
    blocked_when:
      - no usable candidate exists
      - proposal content incomplete

  customer_response_record_screen:
    primary_goal:
      - record customer reaction to proposal
    read:
      - latest proposal summary
      - past proposal history
    write:
      - response type
      - response date
      - operator note
    actions:
      - record_acceptance
      - record_rejection
      - record_revision_request
    success_result:
      - accepted moves order to customer_confirmed
      - revision request keeps proposal cycle active
    blocked_when:
      - no proposal exists
      - response type missing

