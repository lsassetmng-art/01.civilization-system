# ============================================================
# AUDIT POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

audit_levels:
- run
- step
- artifact

recommended_settings:
light_drafting:
- run mandatory
- step selective
- artifact selective

normal_development:
- run mandatory
- step enabled
- artifact selective

critical_apply:
- run mandatory
- step mandatory
- artifact mandatory

git_integrated_apply:
- run mandatory
- step mandatory
- artifact mandatory

policy_principle:
Audit depth is configurable,
but some minimum observability should remain.
