# ============================================================
# PUBLIC TRAINING FACILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: public-training-facilities
component: public-training-facility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the architecture for nation-owned public training facilities.


# ============================================================
# 2. CORE RULE
# ============================================================

Military, firefighter, rescue, and similar state facilities
are nation facilities, not ordinary company facilities.

They are placed through Nation Builder facility placement.


# ============================================================
# 3. ACCESS RULE
# ============================================================

Access is restricted to:
- government_employee_only
- assigned_personnel_only
- public_service_access_only


# ============================================================
# 4. FINAL RULE
# ============================================================

State training facilities belong to Nation Builder,
not to ordinary company builder flows.
