# ============================================================
# PERSONA STATE ACCESS MODEL
# ============================================================

status: canonical
type: interface

# ============================================================
# PURPOSE
# ============================================================

Defines how persona state is accessed.

# ============================================================
# RULES
# ============================================================

- read via API / DB view
- no local cache as source of truth
- eventual consistency allowed

