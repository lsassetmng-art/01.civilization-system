# ============================================================
# CIVILIZATION REAL ESTATE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official interface detail for CivilizationOS
real-estate rights, registry, and transaction handling.

This interface defines the minimum input/output shape
for property evaluation, registry update, and transaction flow.


# ============================================================
# 1. INTERFACE PRINCIPLE
# ============================================================

Real-estate interfaces must be:

- nation-aware
- right-aware
- holder-aware
- registry-aware
- fail-closed aware

Interfaces must carry enough information
for policy resolution and legal evaluation.


# ============================================================
# 2. PROPERTY OBJECT REFERENCE INTERFACE
# ============================================================

required_fields:
- property_object_type
- property_object_ref
- nation_code
- property_use_class_code where resolvable


# ============================================================
# 3. PROPERTY RIGHT REQUEST INTERFACE
# ============================================================

required_fields:
- property_object_type
- property_object_ref
- nation_code
- right_type_code
- holder_type
- holder_ref
- action_type
- correlation_id

optional_fields:
- source_right_ref
- requested_effective_from
- requested_effective_to
- approval_context_summary
- source_transaction_ref


# ============================================================
# 4. PROPERTY TRANSACTION INTERFACE
# ============================================================

required_fields:
- nation_code
- property_object_type
- property_object_ref
- offered_right_type
- seller_holder_type
- seller_holder_ref
- buyer_holder_type where applicable
- buyer_holder_ref where applicable
- transaction_action
- correlation_id

optional_fields:
- property_listing_id
- property_offer_id
- property_contract_id
- settlement_terms_summary
- approval_context_summary
- encumbrance_context_summary


# ============================================================
# 5. REGISTRY UPDATE INTERFACE
# ============================================================

required_fields:
- nation_code
- real_estate_registry_book_id or registry_scope
- property_object_type
- property_object_ref
- property_right_id or requested_right_payload
- requested_action_type
- correlation_id


# ============================================================
# 6. EVALUATION OUTPUT INTERFACE
# ============================================================

required_fields:
- evaluation_status
- nation_code
- property_object_ref
- correlation_id
- evaluated_at

optional_fields:
- approval_required
- blocking_reason_summary
- unresolved_policy_summary
- next_allowed_actions_summary
- registry_requirement_summary


# ============================================================
# 7. FINAL INTERFACE RULE
# ============================================================

CivilizationOS real-estate interfaces must remain explicit,
DB-policy-resolvable,
and fail-closed compatible.

Core summary:

- property, right, holder, registry, and transaction context
  must be explicit
- foreign/company/approval context must be explicit when relevant
- interfaces must carry enough data for nation-specific policy evaluation
