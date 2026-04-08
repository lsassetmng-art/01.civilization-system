# ============================================================
# ESTIMATE INVENTORY CHECK MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_inventory_check stores reference lookup results
for item inventory information.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- inventory_check_id
- estimate_id
- line_item_id
- item_code
- reference_status
- available_quantity
- reserved_quantity
- inbound_quantity
- checked_at
- source_system
- is_cached
- cache_expire_at

# ============================================================
# 3. REFERENCE STATUS
# ============================================================

Representative reference_status values:

- success_fresh
- success_cached
- stale
- failed
- unknown

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

This model is non-authoritative.

It stores advisory inventory information only.

# ============================================================
# 5. LINKAGE RULE
# ============================================================

An inventory check may be linked to one line item,
or in some UI cases to estimate-level exploratory lookup.

line_item_id may therefore be nullable if policy allows.

