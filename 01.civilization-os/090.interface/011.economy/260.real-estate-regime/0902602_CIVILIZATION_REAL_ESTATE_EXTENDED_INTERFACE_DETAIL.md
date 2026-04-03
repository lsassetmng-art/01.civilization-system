# ============================================================
# CIVILIZATION REAL ESTATE EXTENDED INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for extended real-estate domains
inside CivilizationOS.

This includes tax, inheritance, transfer, auction,
finance, and persona housing screening.


# ============================================================
# 1. TAX INTERFACE
# ============================================================

required_fields:
- nation_code
- tax_event_type
- property_object_ref
- property_right_id where applicable
- taxable_subject_ref
- correlation_id


# ============================================================
# 2. INHERITANCE / TRANSFER INTERFACE
# ============================================================

required_fields:
- nation_code
- transfer_type
- property_object_ref
- property_right_id
- from_holder_ref
- to_holder_ref or heir_ref
- correlation_id


# ============================================================
# 3. AUCTION / ENFORCEMENT INTERFACE
# ============================================================

required_fields:
- nation_code
- trigger_type
- property_object_ref
- property_right_id
- authority_actor_ref
- correlation_id


# ============================================================
# 4. FINANCE / MORTGAGE INTERFACE
# ============================================================

required_fields:
- nation_code
- borrower_ref
- property_object_ref
- property_right_id
- requested_amount
- requested_currency_code
- correlation_id


# ============================================================
# 5. PERSONA SCREENING INTERFACE
# ============================================================

required_fields:
- nation_code
- persona_ref
- property_object_ref where applicable
- screening_type
- requested_rent_amount or requested_loan_amount
- requested_currency_code
- correlation_id

screening_type examples:
- rental_screening
- mortgage_screening


# ============================================================
# 6. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_approval
- restricted
- prohibited
- blocked
- unresolved_policy

This distinction is mandatory.


# ============================================================
# 7. FINAL INTERFACE RULE
# ============================================================

Extended real-estate interfaces in CivilizationOS must be:
- explicit
- nation-resolvable
- DB-controlled compatible
- fail-closed compatible
