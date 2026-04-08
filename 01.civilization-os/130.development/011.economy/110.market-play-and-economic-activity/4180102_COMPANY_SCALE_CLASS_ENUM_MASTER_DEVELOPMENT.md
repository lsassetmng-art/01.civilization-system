# ============================================================
# COMPANY SCALE CLASS ENUM MASTER
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines rollout for company-builder enum/master persistence used by market-play and marketplace flows.

# 2. BUILD ORDER

1. define enum master schema
2. seed phase-specific and country-specific values
3. validate uniqueness by enum group and value
4. expose read-only lookup path
5. bind builder form resolution to seeded enums

# 3. TEST STRATEGY

- duplicate enum value rejection
- invalid parent/category relation rejection
- phase scope mismatch rejection
- disabled enum visibility check

# 4. RELEASE

1. read-only seed deployment
2. builder lookup enablement
3. phased form binding enablement

# 5. RISKS

- inconsistent seed packs
- invalid enum inheritance
- hidden dependency from UI to unseeded enum
