# ============================================================
# CIVILIZATION UPLOAD MODERATION AND ILLEGALITY MODEL MAP
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines rollout for mapping and binding persistence used by company builder, company UI, and market-play resolution.

# 2. BUILD ORDER

1. define mapping schema
2. seed source/target bindings
3. validate ordering and uniqueness rules
4. expose read-only resolution path
5. enable downstream builder/UI resolution

# 3. TEST STRATEGY

- missing source rejection
- missing target rejection
- duplicate active mapping rejection
- display_order validation
- binding_type validation

# 4. RELEASE

1. read-only mapping publication
2. builder resolution enablement
3. downstream UI parity enablement

# 5. RISKS

- stale mapping after enum changes
- ambiguous source/target graph
- hidden coupling with UI routing
