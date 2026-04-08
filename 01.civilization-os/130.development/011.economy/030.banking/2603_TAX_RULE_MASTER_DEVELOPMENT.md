# ============================================================
# TAX RULE MASTER
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines rollout for banking rule and master persistence used by payment, tax, and financial relief resolution.

# 2. BUILD ORDER

1. define rule schema
2. seed effective windows
3. validate overlap and precedence
4. expose read-only rule lookup
5. enable downstream payment and tax evaluation

# 3. TEST STRATEGY

- overlapping active window rejection
- invalid jurisdiction scope rejection
- invalid rate or priority validation

# 4. RELEASE

1. read-only seed deployment
2. evaluation lookup enablement
3. downstream transaction usage enablement

# 5. RISKS

- overlapping rule windows
- inconsistent tax or payment precedence
