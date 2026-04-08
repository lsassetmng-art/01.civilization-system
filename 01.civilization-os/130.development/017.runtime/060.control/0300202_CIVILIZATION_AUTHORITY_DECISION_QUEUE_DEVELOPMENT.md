# ============================================================
# CIVILIZATION AUTHORITY DECISION QUEUE
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 017.runtime

# BUILD ORDER

1. define queue schema
2. implement routing
3. implement lock and decision write
4. add timeout handling

# TESTS

- stale lock handling
- missing route rejection
