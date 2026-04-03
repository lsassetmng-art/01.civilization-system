# ============================================================
# CRIMINAL PROCEDURE POLICY
# ============================================================

status: canonical
layer: policy
domain: law.criminal_procedure
document_id: 0801390001

owner: Boss
prepared_by: Zero

policy_scope:
- prosecution eligibility
- evidence-chain admissibility
- charge route validity
- execution legitimacy
- release/parole review conditions

decision_rules:
- formal charge requires policy-valid case class
- inadmissible evidence cannot support irreversible progression
- sentence execution requires valid sentencing basis
- parole or release requires explicit review path

fail_closed_cases:
- missing jurisdiction
- broken evidence chain
- invalid sentence basis
- conflicting execution state
