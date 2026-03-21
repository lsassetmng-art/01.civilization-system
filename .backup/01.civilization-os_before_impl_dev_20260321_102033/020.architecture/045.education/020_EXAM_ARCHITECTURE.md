# ============================================================
# EXAM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: education

# ============================================================
# RULE
# ============================================================

- exam tickets are sold through shop
- ticket issuance timing is DB-controlled
- purchase -> exam day -> consume ticket -> same-day result
- reattempts are allowed
- official exam history is stored

