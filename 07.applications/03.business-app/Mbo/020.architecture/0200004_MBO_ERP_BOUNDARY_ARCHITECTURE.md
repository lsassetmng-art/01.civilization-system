# ============================================================
# MBO ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

boundary_principles:
- Mbo prepares controlled business records
- ERP remains the external system of record
- only finalized and approved data may be sent
- transmission history must remain auditable
