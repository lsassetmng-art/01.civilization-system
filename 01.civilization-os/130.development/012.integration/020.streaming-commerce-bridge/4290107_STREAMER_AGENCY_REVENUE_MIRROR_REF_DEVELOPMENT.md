# ============================================================
# STREAMER AGENCY REVENUE MIRROR REF
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 012.integration

# BUILD ORDER

1. define revenue mirror schema
2. add eligible sale capture
3. add settlement linkage
4. expose reporting handoff

# TESTS

- duplicate mirror generation rejection
- settlement ambiguity rejection
