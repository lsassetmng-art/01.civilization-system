# ============================================================
# ESTIMATE INVENTORY REFERENCE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime governs how the application references
latest inventory information from ERP-connected services.

# ============================================================
# 2. REFERENCE BEHAVIOR
# ============================================================

For each item lookup, runtime must store:

- lookup time
- source system
- returned quantities
- success/failure state
- cache state

# ============================================================
# 3. VISUAL STATES
# ============================================================

Inventory reference visual states may include:

- available
- low_stock
- out_of_stock
- inbound_only
- unknown
- cached
- stale
- failed

# ============================================================
# 4. AUTHORITY RULE
# ============================================================

The runtime must never represent inventory reference
as final reservable guarantee unless provided by authoritative external policy.

