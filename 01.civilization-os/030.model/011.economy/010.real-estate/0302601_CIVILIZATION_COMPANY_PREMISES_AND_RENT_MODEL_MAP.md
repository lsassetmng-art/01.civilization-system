# ============================================================
# CIVILIZATION COMPANY PREMISES AND RENT MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for company premises and rent
inside CivilizationOS.


# ============================================================
# 1. COMPANY_REGISTERED_PREMISES
# ============================================================

purpose:
Formal legal registration location of a Civilization company.

core_fields:
- company_registered_premises_id
- company_ref
- property_object_type
- property_object_ref
- linked_property_right_id
- linked_occupancy_record_id
- premises_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 2. COMPANY_OPERATING_PREMISES
# ============================================================

purpose:
Operational location of a Civilization company.

core_fields:
- company_operating_premises_id
- company_ref
- property_object_type
- property_object_ref
- linked_property_right_id
- linked_occupancy_record_id
- operating_premises_status
- use_type
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 3. RENT_PROFILE
# ============================================================

purpose:
Reference or assessed rent baseline for a property object.

core_fields:
- rent_profile_id
- nation_code
- property_object_type
- property_object_ref
- rent_type
- rent_currency_code
- rent_reference_value
- billing_cycle_code
- late_fee_rule_ref
- collection_rule_ref
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 4. RENT_CONTRACT
# ============================================================

purpose:
Formal rent/lease payment agreement.

core_fields:
- rent_contract_id
- property_contract_id
- landlord_holder_type
- landlord_holder_ref
- tenant_holder_type
- tenant_holder_ref
- rent_currency_code
- rent_amount
- billing_cycle_code
- due_day_rule
- rent_contract_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 5. RENT_COLLECTION_RECORD
# ============================================================

purpose:
Track actual rent billing and collection.

core_fields:
- rent_collection_record_id
- rent_contract_id
- billing_period_start
- billing_period_end
- rent_currency_code
- billed_amount
- paid_amount
- outstanding_amount
- collection_status
- paid_at
- created_at
- updated_at


# ============================================================
# 6. RENT_DEFAULT_RECORD
# ============================================================

purpose:
Track default, late payment, or unresolved rent obligations.

core_fields:
- rent_default_record_id
- rent_contract_id
- collection_record_id
- default_status
- default_reason
- freeze_effect
- enforcement_summary
- created_at
- updated_at


# ============================================================
# 7. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for company premises and rent inside Civilization.

Core summary:

- company premises are explicit
- rent contracts are explicit
- rent collection is explicit
- rent currency is stored explicitly
- all flows remain inside Civilization
