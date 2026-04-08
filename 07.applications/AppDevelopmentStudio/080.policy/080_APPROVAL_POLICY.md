# ============================================================
# APPROVAL POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

policy_scope:
Review and approval settings are configurable by artifact and action type.

review_modes:
- mandatory
- recommended
- optional
- skipped

approval_modes:
- mandatory
- optional
- auto-approved

policy_principles:
- review may be skipped
- approval may be skipped
- both may be active
- both may be escalated
- dangerous actions may override speed-oriented settings

recommended_defaults:
- design: optional review
- code apply: mandatory approval
- SQL write/DDL: mandatory approval
- protected Git push: mandatory approval
