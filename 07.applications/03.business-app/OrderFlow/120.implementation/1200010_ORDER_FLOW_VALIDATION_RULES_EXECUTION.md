# ============================================================
# ORDER FLOW VALIDATION RULES EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for inventory check,
lead time calculation, delivery candidates, and proposal flow.

validation_rules:

  record_inventory_check:
    required:
      - company_id
      - order_id
      - inventory_check.inventory_status
      - inventory_check.freshness_type
      - inventory_check.inventory_source_type
    constraints:
      inventory_status:
        allowed_values:
          - not_checked
          - available
          - partially_available
          - unavailable
          - replenishment_required
          - stale
      freshness_type:
        allowed_values:
          - fresh
          - cached
          - stale
          - unknown
      inventory_source_type:
        allowed_values:
          - erp
          - app_local
          - external_reference
          - manual_confirmation
    forbidden:
      - inventory check on closed order
      - missing freshness semantics

  calculate_lead_time:
    required:
      - company_id
      - order_id
      - lead_time_input.lead_time_basis_type
    constraints:
      lead_time_basis_type:
        allowed_values:
          - stock_available
          - partial_stock_waiting_supply
          - made_to_order
          - supplier_confirmation
          - manual_estimation
      lead_time_days:
        must_be:
          - integer_or_computed_integer
          - zero_or_greater
    forbidden:
      - negative lead time
      - lead time calculation without usable order execution context

  calculate_delivery_candidates:
    required:
      - company_id
      - order_id
    constraints:
      requested_delivery_date_hint:
        must_be:
          - valid_date_or_null
      candidates[].candidate_type:
        allowed_values:
          - single_date
          - date_range
      candidates[].confidence_type:
        allowed_values:
          - high
          - medium
          - low
          - manual
      date_range_rule:
        - candidate_end_date must be same_or_after candidate_start_date
    forbidden:
      - generating candidate with invalid date range
      - empty candidate label where candidate exists

  create_customer_delivery_proposal:
    required:
      - company_id
      - order_id
      - proposal.proposal_date_or_start
      - proposal.proposal_channel_type
    constraints:
      proposal_channel_type:
        allowed_values:
          - manual_internal_record
          - phone_record
          - email_record
          - in_person_record
      proposal_end_date:
        must_be:
          - null_or_same_or_after proposal_date_or_start
    forbidden:
      - proposal on closed or canceled order
      - proposal without delivery basis in normal flow

  record_customer_delivery_response:
    required:
      - company_id
      - order_id
      - response.response_type
      - response.response_date
    constraints:
      response_type:
        allowed_values:
          - accepted
          - rejected
          - revision_requested
      response_date:
        must_be:
          - valid_date
    forbidden:
      - response record without prior proposal
      - accepted state without proposal context

