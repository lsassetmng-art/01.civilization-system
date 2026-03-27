# ============================================================
# PROPERTY TRANSACTION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: property-transaction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED TRANSACTION TYPES
# ============================================================

- land_purchase
- land_lease
- building_lease
- tenant_unit_occupancy
- property_resale
- tenancy_termination


# ============================================================
# 2. FINAL RULE
# ============================================================

Property transaction types must remain explicit
and mediation-aware.
