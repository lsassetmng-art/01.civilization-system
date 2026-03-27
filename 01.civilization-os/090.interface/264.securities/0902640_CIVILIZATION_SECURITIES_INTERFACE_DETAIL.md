# ============================================================
# CIVILIZATION SECURITIES INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for securities services
inside CivilizationOS.


# ============================================================
# 1. ACCOUNT / CUSTODY INTERFACE
# ============================================================

required_fields:
- nation_code
- securities_institution_ref
- account_holder_type
- account_holder_ref
- account_type
- correlation_id


# ============================================================
# 2. ORDER / EXECUTION INTERFACE
# ============================================================

required_fields:
- nation_code
- brokerage_account_ref
- instrument_ref
- order_type
- side
- order_quantity
- correlation_id

optional_fields:
- limit_price


# ============================================================
# 3. OFFERING / UNDERWRITING INTERFACE
# ============================================================

required_fields:
- nation_code
- issuer_ref
- instrument_type
- offering_type
- target_amount_or_quantity
- correlation_id


# ============================================================
# 4. ADVISORY / MARGIN / RESTRICTION INTERFACE
# ============================================================

required_fields:
- nation_code
- action_type
- subject_ref
- correlation_id

action_type examples:
- create_advisory_mandate
- create_managed_mandate
- open_margin_profile
- issue_margin_call
- freeze_account
- suspend_instrument


# ============================================================
# 5. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- restricted
- prohibited
- blocked
- unresolved_policy

This distinction is mandatory.


# ============================================================
# 6. FINAL INTERFACE RULE
# ============================================================

Civilization securities interfaces must be:
- institution-aware
- instrument-aware
- custody-aware
- settlement-aware
- restriction-aware
- DB-controlled compatible
