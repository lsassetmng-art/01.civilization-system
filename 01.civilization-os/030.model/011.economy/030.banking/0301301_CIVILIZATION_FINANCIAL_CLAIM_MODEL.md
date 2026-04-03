# ============================================================
# CIVILIZATION FINANCIAL CLAIM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic financial claim model of CivilizationOS.

This model is for generic claim handling across domains.

It is not the canonical model for:
- bank loan contracts
- mortgage claims
- enterprise lending claims
- real-estate collateral enforcement claims


# ============================================================
# 1. ROLE
# ============================================================

A financial claim may arise from:
- insurance
- subsidy dispute
- generic settlement dispute
- cross-domain payable conflict
- relief disbursement disagreement


# ============================================================
# 2. CORE FIELDS
# ============================================================

core_fields:
- financial_claim_id
- nation_code
- claim_type
- claimant_type
- claimant_ref
- respondent_type
- respondent_ref
- source_domain
- source_ref
- claimed_amount
- currency_code
- claim_status
- opened_at
- closed_at
- created_at
- updated_at

claim_type examples:
- insurance_claim
- subsidy_claim
- settlement_claim
- relief_claim
- reimbursement_claim


# ============================================================
# 3. FINAL RULE
# ============================================================

This model supports generic financial claim handling only.

Detailed banking and real-estate finance disputes
must remain in their specialized domains.
