# ============================================================
# CIVILIZATION SUBSIDY ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the subsidy allocation model of CivilizationOS.

This model supports:
- housing subsidy
- disaster recovery subsidy
- enterprise support subsidy
- agricultural subsidy
- public-interest subsidy


# ============================================================
# 1. CORE FIELDS
# ============================================================

core_fields:
- subsidy_allocation_id
- nation_code
- subsidy_program_type
- beneficiary_type
- beneficiary_ref
- subsidy_currency_code
- approved_amount
- paid_amount
- allocation_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Subsidy remains a generic finance-credit support domain,
distinct from lending and banking products.
