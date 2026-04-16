# ============================================================
# PROJECT FLOW CANONICAL PRIORITY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must defer to higher canonical ownership
when overlap or conflict exists.

policy_rules:
- system-wide foundation rules override ProjectFlow-local wording
- ERP-owned truth overrides ProjectFlow-local copies or interpretations
- BusinessOS mediation rules override ProjectFlow-local ERP access assumptions
- common component ownership stays outside ProjectFlow unless promoted separately
- ProjectFlow retains ownership only for application-local additive behavior
