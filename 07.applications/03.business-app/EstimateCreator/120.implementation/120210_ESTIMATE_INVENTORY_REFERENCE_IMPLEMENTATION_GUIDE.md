# ============================================================
# ESTIMATE INVENTORY REFERENCE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Inventory reference implementation must expose current reference information
without claiming authoritative allocation or reservation truth.

# ============================================================
# 2. IMPLEMENTATION REQUIREMENTS
# ============================================================

Implementation should preserve:

- item identity
- available quantity
- reserved quantity when available
- inbound quantity when available
- checked_at
- source_system
- cache state
- freshness state

# ============================================================
# 3. DISPLAY RULE
# ============================================================

UI and implementation must preserve distinction between:

- fresh
- cached
- stale
- failed

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

Inventory implementation must remain advisory-only
unless external authoritative policy explicitly states otherwise.

