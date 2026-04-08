# ============================================================
# CIVILIZATION SANCTION RECORD
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 017.runtime

# BUILD ORDER

1. define sanction schema
2. add uniqueness for active scope
3. add enforcement hook

# TESTS

- duplicate active sanction rejection
- invalid scope rejection
