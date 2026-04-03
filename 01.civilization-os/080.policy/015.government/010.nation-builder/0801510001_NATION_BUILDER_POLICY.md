# ============================================================
# NATION BUILDER POLICY
# ============================================================

status: canonical
layer: policy
domain: government.nation_builder
document_id: 0801510001

owner: Boss
prepared_by: Zero

policy_scope:
- nation publish criteria
- required regime fields
- zoning consistency
- market tier consistency
- validation failure thresholds

fail_closed_cases:
- missing required nation structure
- unresolved power configuration
- invalid public system bundle
