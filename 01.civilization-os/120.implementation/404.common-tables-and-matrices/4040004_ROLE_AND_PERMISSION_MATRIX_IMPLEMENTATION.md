# ============================================================
# ROLE AND PERMISSION MATRIX IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: role-and-permission-matrix-implementation
component: role-and-permission-matrix-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define representative role and permission matrices
for Civilization.

# ============================================================
# 2. ADMIN MATRIX EXAMPLE
# ============================================================

Representative admin roles:

- system_admin
- identity_admin
- marketplace_admin
- world_operations_admin
- infrastructure_operator
- economy_control_operator
- risk_event_operator
- audit_observer

# ============================================================
# 3. FACILITY MATRIX EXAMPLE
# ============================================================

Representative facility roles:

- facility_owner
- facility_manager
- facility_staff
- linked_operator
- read_only_observer

# ============================================================
# 4. SYSTEM-ONLY ACTION MATRIX EXAMPLE
# ============================================================

Representative system-only actions:

- infrastructure_placement
- world_correction
- emergency_override
- robot_isolation
- market_recalculation_trigger

# ============================================================
# 5. FINAL RULE
# ============================================================

Role and permission matrix implementation must remain:

- action-explicit
- role-explicit
- auditable
- least-privilege-compatible
