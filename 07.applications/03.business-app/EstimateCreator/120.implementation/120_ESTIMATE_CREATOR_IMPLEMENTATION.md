# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

EstimateCreator implementation must deliver
a production-usable estimate workbench that supports:

- standalone launch
- deeplink launch
- shared session reuse on deeplink
- estimate create/edit/detail/list
- offline draft and replay
- app-internal sharing
- ERP rough estimate publication request
- inventory reference lookup
- premium-gated structured productivity features

# ============================================================
# 2. IMPLEMENTATION PRINCIPLE
# ============================================================

Implementation must preserve the following boundaries:

- rough_estimate remains default
- formal ERP authority remains outside the local app
- deeplink does not bypass validation
- shared session reuse does not bypass authorization
- offline mode does not claim external completion
- premium unknown fails closed for premium-only write

# ============================================================
# 3. IMPLEMENTATION BLOCKS
# ============================================================

Recommended implementation blocks:

1. entry and session block
2. core estimate block
3. local persistence block
4. offline/sync block
5. sharing block
6. ERP publication block
7. inventory reference block
8. premium entitlement block
9. premium feature block
10. audit/error/validation hardening block

# ============================================================
# 4. MINIMUM EXECUTABLE IMPLEMENTATION
# ============================================================

The minimum executable implementation should include:

- app shell
- standalone entry
- deeplink entry
- session validation
- estimate list/detail/editor
- local draft persistence
- basic sync state display

# ============================================================
# 5. IMPLEMENTATION NON-GOALS
# ============================================================

The following should not be treated as first mandatory implementation scope:

- authoritative ERP formal estimate issuance
- private replacement of common sync capability
- private replacement of common sharing capability
- private replacement of ERP publication path
- premium bypass through deeplink
- inventory reservation authority


# ============================================================
# 6. MULTILINGUAL / DELIVERY IMPLEMENTATION BLOCK
# ============================================================

Additional implementation block:

- locale resource layer
- locale-aware template variant layer
- customer preferred locale/currency application
- readonly delivery link handling
- delivery/open history persistence
- customer response persistence

