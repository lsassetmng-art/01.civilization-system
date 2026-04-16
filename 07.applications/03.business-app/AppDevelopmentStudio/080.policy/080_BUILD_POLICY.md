# ============================================================
# BUILD POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

build_modes:
- disabled
- enabled
- if_available
- external_only

policy_principles:
- build is optional
- build should not be forced in unsupported environments
- external build handoff is a valid operating mode
