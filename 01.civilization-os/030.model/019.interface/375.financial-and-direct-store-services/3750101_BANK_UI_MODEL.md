# ============================================================
# BANK UI MODEL
# ============================================================

status: canonical
layer: model
scope: financial-and-direct-store-services
component: bank-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- bank_home
- account_summary
- transfer_flow
- deposit_and_withdraw_flow
- loan_or_credit_surface
- transaction_history
- bank_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

bank_ui_fields:
- bank_id
- account_id
- holder_id
- balance_summary
- locked_funds_summary
- transfer_permission_profile
- nation_regulation_profile
- pending_transaction_state
- account_notice_state
- institution_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

bank_ui_actions:
- open_account_summary
- transfer_funds
- review_transaction_history
- review_notices
- open_loan_or_credit
- open_linked_services


# ============================================================
# 4. FINAL RULE
# ============================================================

Bank UI must prioritize
balance truth,
transfer clarity,
and transaction traceability.
