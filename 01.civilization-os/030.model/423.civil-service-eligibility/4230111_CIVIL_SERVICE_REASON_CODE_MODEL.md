# ============================================================
# CIVIL SERVICE REASON CODE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-reason-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REASON CODES
# ============================================================

reason_codes:
- CSR-001 eligible
- CSR-002 eligible_with_exam
- CSR-003 eligible_with_appointment
- CSR-004 eligible_with_loyalty_requirement
- CSR-005 eligible_with_clearance_requirement
- CSR-006 ineligible_non_human
- CSR-007 ineligible_disqualified
- CSR-008 ineligible_nation_rule_blocked
- CSR-009 blocked_by_rebellion_status
- CSR-010 blocked_by_criminal_status
- CSR-011 blocked_by_loyalty_status
- CSR-012 blocked_by_office_specific_human_requirement


# ============================================================
# 2. FINAL RULE
# ============================================================

Reason codes
must support logs,
UI explanation,
and eligibility debugging.
