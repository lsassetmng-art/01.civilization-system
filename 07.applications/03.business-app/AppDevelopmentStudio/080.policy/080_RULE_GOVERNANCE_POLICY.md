# ============================================================
# RULE GOVERNANCE POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

policy_scope:
Rules may be added, updated, disabled, versioned, and reassigned.

governance_requirements:
- every rule profile must be identifiable
- active version must be explicit
- conflicting rules should raise warnings
- project overrides are allowed
- environment/language overrides are allowed
- history should be retainable

recommended_controls:
- shared rule changes should be reviewable
- project rule changes may be faster than shared rule changes
- deprecated rules should remain visible until migrated
