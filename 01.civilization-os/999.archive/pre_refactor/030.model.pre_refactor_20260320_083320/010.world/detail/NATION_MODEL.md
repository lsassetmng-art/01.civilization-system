# ============================================================
# NATION MODEL
# ============================================================

status: canonical

# ============================================================
# RULES
# ============================================================

- initial nations = 7 (AI controlled)
- user nation creation allowed
- AI cannot create new nations
- no destructive collapse

# ============================================================
# COLLAPSE
# ============================================================

- user nation collapse:
  → choose: liquidate / retain

- AI nation:
  → always persists

