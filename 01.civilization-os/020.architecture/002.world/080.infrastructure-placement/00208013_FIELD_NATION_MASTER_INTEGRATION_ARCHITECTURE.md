# ============================================================
# FIELD NATION MASTER INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-nation-master-integration
component: field-nation-master-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical integration architecture
for connecting Field Map and Nation aggregation design
into the existing integrated master
and implementation bridge master layers.

This architecture defines:

- field facility dictionary integration
- field facility economics integration
- nation aggregate integration
- builder preview integration
- implementation bridge lookup integration


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Field and Nation designs must not remain isolated document islands.

They must expose stable references
that can be consumed by:

- integrated master
- implementation bridge master
- nation builder final integration
- future runtime implementation


# ============================================================
# 3. REQUIRED TARGETS
# ============================================================

required_targets:
- integrated_master_layer
- implementation_bridge_master_layer
- nation_builder_final_integration_layer
- facility_type_master_layer


# ============================================================
# 4. FINAL RULE
# ============================================================

Local facility design
and nation aggregate design
must become lookup-ready master-connected structures.
