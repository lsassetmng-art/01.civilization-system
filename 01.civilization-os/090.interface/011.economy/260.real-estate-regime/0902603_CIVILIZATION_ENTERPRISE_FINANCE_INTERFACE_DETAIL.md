# ============================================================
# CIVILIZATION ENTERPRISE FINANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for enterprise finance
inside CivilizationOS.


# ============================================================
# 1. ENTERPRISE LOAN APPLICATION INTERFACE
# ============================================================

required_fields:
- nation_code
- company_ref
- loan_product_type
- requested_amount
- requested_currency_code
- purpose_summary
- correlation_id

optional_fields:
- guarantee_mode
- requested_term_summary
- collateral_summary


# ============================================================
# 2. SCREENING INTERFACE
# ============================================================

required_fields:
- nation_code
- company_ref
- enterprise_loan_application_ref
- screening_action
- correlation_id

screening_action examples:
- evaluate_company_standing
- evaluate_credit
- evaluate_collateral
- evaluate_guarantee
- finalize_screening


# ============================================================
# 3. CONTRACT / REPAYMENT INTERFACE
# ============================================================

required_fields:
- enterprise_loan_contract_ref or enterprise_loan_application_ref
- contract_action or repayment_action
- correlation_id

contract_action examples:
- create_contract
- activate_contract
- register_collateral
- register_guarantee

repayment_action examples:
- open_billing
- register_payment
- mark_overdue
- mark_default


# ============================================================
# 4. OUTPUT RULE
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
# 5. FINAL INTERFACE RULE
# ============================================================

Civilization enterprise finance interfaces must be:
- explicit
- company-aware
- nation-resolvable
- DB-controlled compatible
- ERP-independent
