# ============================================================
# GLOBAL STATE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for global-state snapshots.

# 2. POLICY RULES

- snapshot boundary must be explicit
- indicator source scope must be declared
- alert severity must resolve deterministically
- adjustment flags require explicit scope and reason

# 3. FAILURE RULE

- incomplete snapshot must reject
- conflicting alert evaluation must reject
- ambiguous adjustment scope must reject

