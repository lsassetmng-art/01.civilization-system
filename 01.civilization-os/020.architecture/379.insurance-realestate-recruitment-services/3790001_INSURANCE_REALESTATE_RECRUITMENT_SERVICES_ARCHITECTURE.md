# ============================================================
# INSURANCE REAL ESTATE RECRUITMENT SERVICES ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: insurance-realestate-recruitment-services
component: insurance-realestate-recruitment-services

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for Insurance UI,
Real Estate UI,
and Recruitment UI
as field-map service endpoints.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

These service UIs must separate:

- browse and compare state
- eligibility and restriction state
- contract or application state
- operator and institution context
- history and notice state

Field entry context may vary,
but service truth must remain stable.


# ============================================================
# 3. SERVICE FAMILIES
# ============================================================

service_families:
- insurance_service
- real_estate_service
- recruitment_service


# ============================================================
# 4. FINAL RULE
# ============================================================

Each service must preserve
one canonical structure
regardless of whether it is opened
from a single-function facility
or from a tenant inside a larger building.
