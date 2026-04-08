# ============================================================
# INFRASTRUCTURE PLACEMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for infrastructure placement.

# 2. POLICY RULES

- placement rule must be explicit before placement
- region and coordinate scope must validate before publication
- placement violation must persist before rejection
- unresolved coordinate scope is prohibited

# 3. FAILURE RULE

- missing placement rule must reject
- invalid coordinate scope must reject
- region mismatch must reject

