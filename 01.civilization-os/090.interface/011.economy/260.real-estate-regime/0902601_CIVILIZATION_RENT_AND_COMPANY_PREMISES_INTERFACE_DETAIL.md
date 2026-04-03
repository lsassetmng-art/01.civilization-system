# ============================================================
# CIVILIZATION RENT AND COMPANY PREMISES INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for company premises and rent
inside CivilizationOS.


# ============================================================
# 1. COMPANY PREMISES LINK INTERFACE
# ============================================================

required_fields:
- company_ref
- property_object_type
- property_object_ref
- link_type
- nation_code
- correlation_id

optional_fields:
- linked_property_right_id
- linked_occupancy_record_id
- effective_from
- effective_to

link_type examples:
- registered_premises
- operating_premises


# ============================================================
# 2. RENT CONTRACT INTERFACE
# ============================================================

required_fields:
- property_contract_id
- landlord_holder_type
- landlord_holder_ref
- tenant_holder_type
- tenant_holder_ref
- property_object_type
- property_object_ref
- nation_code
- rent_amount
- billing_cycle_code
- correlation_id

optional_fields:
- due_day_rule
- late_fee_rule_ref
- effective_from
- effective_to


# ============================================================
# 3. RENT COLLECTION INTERFACE
# ============================================================

required_fields:
- rent_contract_id
- billing_period_start
- billing_period_end
- rent_currency_code
- billed_amount
- collection_action
- correlation_id

collection_action examples:
- open_billing
- register_payment
- apply_late_fee
- mark_default
- freeze_contract
- close_period


# ============================================================
# 4. OUTPUT INTERFACE
# ============================================================

required_fields:
- evaluation_status
- rent_contract_id or premises_link_ref
- correlation_id
- evaluated_at

optional_fields:
- rent_currency_code
- outstanding_amount
- blocking_reason_summary
- next_allowed_actions_summary


# ============================================================
# 5. FINAL INTERFACE RULE
# ============================================================

Civilization rent and company premises interfaces
must remain explicit and Civilization-internal.

Core summary:

- premises link is explicit
- rent contract is explicit
- rent collection is explicit
- rent currency is explicit
- ERP is not part of the interface surface
