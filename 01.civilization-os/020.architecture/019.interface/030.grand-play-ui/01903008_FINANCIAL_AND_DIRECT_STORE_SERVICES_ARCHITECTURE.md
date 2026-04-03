# ============================================================
# FINANCIAL AND DIRECT STORE SERVICES ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: financial-and-direct-store-services
component: financial-and-direct-store-services

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for Bank UI,
Securities UI,
and User Company Direct Store UI
as field-map service endpoints.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

These service UIs must separate:

- account and ownership state
- transaction state
- restriction and permission state
- institution context
- seller or operator context
- history and audit state

Facility entry context may vary,
but service truth must remain stable.


# ============================================================
# 3. SERVICE FAMILIES
# ============================================================

service_families:
- bank_service
- securities_service
- company_direct_store_service


# ============================================================
# 4. FINAL RULE
# ============================================================

Each service must preserve
one canonical structure
regardless of whether it is opened
from a single-function facility
or from a tenant inside a larger building.
