# ============================================================
# NAMECARD API FIELD SCHEMA META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for API field schema design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- request/response schema is canonicalized
- required and optional fields are separated
- ERP publish schema targets shared BusinessOS capability,
  not direct application-to-ERP transmission

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field length constraints
- exact enum value catalogs
- exact nullability rules per client platform
- exact batch size limits

