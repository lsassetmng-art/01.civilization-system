# ============================================================
# CIVILIZATION BANKING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for banking services
inside CivilizationOS.


# ============================================================
# 1. ACCOUNT / DEPOSIT INTERFACE
# ============================================================

required_fields:
- nation_code
- bank_institution_ref
- account_holder_type
- account_holder_ref
- account_type
- currency_code
- correlation_id


# ============================================================
# 2. PAYMENT / TRANSFER INTERFACE
# ============================================================

required_fields:
- nation_code
- payment_type
- payer_account_ref
- payee_account_ref or payee_external_ref
- instructed_amount
- currency_code
- correlation_id


# ============================================================
# 3. LENDING INTERFACE
# ============================================================

required_fields:
- nation_code
- bank_institution_ref
- borrower_type
- borrower_ref
- loan_product_type
- requested_amount
- requested_currency_code
- correlation_id


# ============================================================
# 4. FX / INVESTMENT / CARD INTERFACE
# ============================================================

required_fields:
- nation_code
- service_action
- subject_ref
- source_currency_code where applicable
- target_currency_code where applicable
- amount where applicable
- correlation_id

service_action examples:
- request_fx_quote
- execute_fx
- open_investment_position
- redeem_investment_position
- authorize_card_payment
- settle_card_payment


# ============================================================
# 5. RISK / RESOLUTION INTERFACE
# ============================================================

required_fields:
- nation_code
- subject_type
- subject_ref
- action_type
- correlation_id

action_type examples:
- trigger_review
- freeze_account
- release_freeze
- open_resolution_case
- apply_deposit_protection


# ============================================================
# 6. OUTPUT RULE
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
# 7. FINAL INTERFACE RULE
# ============================================================

Civilization banking interfaces must be:
- explicit
- institution-aware
- nation-resolvable
- DB-controlled compatible
- ERP-independent
