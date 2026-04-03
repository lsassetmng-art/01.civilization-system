# ============================================================
# CIVILIZATION INSURANCE POLICY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic insurance policy model of CivilizationOS.

This model supports:
- property insurance
- life insurance
- health/event insurance
- enterprise insurance
- disaster insurance
- liability insurance

Detailed risk pricing remains nation-governed and DB-controlled.


# ============================================================
# 1. CORE FIELDS
# ============================================================

core_fields:
- insurance_policy_id
- nation_code
- insured_subject_type
- insured_subject_ref
- policy_type
- premium_currency_code
- premium_amount
- coverage_summary
- insurer_ref
- policy_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Insurance remains a valid generic finance-credit domain.

It is not superseded by banking or real-estate lending models.
