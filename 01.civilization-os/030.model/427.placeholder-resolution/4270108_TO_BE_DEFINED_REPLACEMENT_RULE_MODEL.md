# ============================================================
# TO BE DEFINED REPLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: to-be-defined-replacement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REPLACEMENT RULE
# ============================================================

replacement_rule:
- "draft_pending_definition" must be replaced by one of:
  - draft_pending_definition
  - nation_override_pending
  - asset_pending_definition
  - extension_reserved_not_canonical
  - deprecated_placeholder_removed


# ============================================================
# 2. FINAL RULE
# ============================================================

Legacy unresolved placeholder text
must not remain in canonical integrated output.
