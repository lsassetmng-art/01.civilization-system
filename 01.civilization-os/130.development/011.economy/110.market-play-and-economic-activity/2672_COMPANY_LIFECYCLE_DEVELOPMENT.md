# ============================================================
# COMPANY LIFECYCLE
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines rollout for company-builder core persistence used by company creation, readiness review, and lifecycle handling.

# 2. BUILD ORDER

1. define company-core schema
2. enable draft and sample flows
3. enable readiness and evaluation paths
4. enable lifecycle and organization paths
5. bind builder persistence to review and listing flows

# 3. TEST STRATEGY

- invalid company type rejection
- invalid ownership scope rejection
- draft payload integrity
- lifecycle transition validation
- organization graph consistency

# 4. RELEASE

1. draft save only
2. controlled review enablement
3. lifecycle write enablement
4. listing-readiness publication

# 5. RISKS

- invalid draft migration
- incomplete company graph
- readiness logic drift
