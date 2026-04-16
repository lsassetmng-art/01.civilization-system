# ============================================================
# ENVIRONMENT SAFETY POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

environment_safety_scope:
- generation capability
- SQL execution capability
- build capability
- Git capability
- external-only handling

policy_principles:
- unsupported actions should not be forced
- external handoff is valid where execution is unavailable
- environment capability should be checked before execution
