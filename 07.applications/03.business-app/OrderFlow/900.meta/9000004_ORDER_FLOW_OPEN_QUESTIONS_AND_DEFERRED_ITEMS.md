# ============================================================
# ORDER FLOW OPEN QUESTIONS AND DEFERRED ITEMS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Collects intentionally deferred items and remaining open questions.

deferred_items:

  execution_sql_finalization:
    status:
      - deferred
    reason:
      - waiting for Sato review and Boss go decision

  final_schema_name:
    status:
      - deferred
    reason:
      - not fixed yet in current packet

  exact_seed_insert_sql:
    status:
      - deferred
    reason:
      - seed strategy fixed, insert bundle not yet authored

  final_rls_claim_function_names:
    status:
      - deferred
    reason:
      - platform alignment required

  migration_repository_placement:
    status:
      - deferred
    reason:
      - repo/package placement not fixed yet

  invoice_flow_receiver_exact:
    status:
      - deferred
    reason:
      - only downstream boundary fixed here

  common_component_exact_design:
    status:
      - deferred_to_other_chat
    reason:
      - intentionally separated by policy

open_questions:

  close_rule_exact:
    current_state:
      - mostly fixed
    remaining_question:
      - whether additional closure_reason_type values are needed later

  sync_visibility_scope:
    current_state:
      - fixed at candidate level
    remaining_question:
      - how much end-user exposure vs privileged exposure should exist in final implementation

  shipment_execution_depth:
    current_state:
      - visibility level only
    remaining_question:
      - whether deeper warehouse-side fields are needed later

  customer_proposal_channel_depth:
    current_state:
      - basic channel types fixed
    remaining_question:
      - whether notification/publication coupling grows later

