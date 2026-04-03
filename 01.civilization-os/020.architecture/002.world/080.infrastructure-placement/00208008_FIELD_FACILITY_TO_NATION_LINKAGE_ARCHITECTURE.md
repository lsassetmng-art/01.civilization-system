# ============================================================
# FIELD FACILITY TO NATION LINKAGE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-to-nation-linkage
component: field-facility-to-nation-linkage

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical linkage architecture
between field-map facility lifecycle events
and Nation aggregated state.

This architecture defines:

- which facility events affect Nation now
- which nation metrics are updated
- whether updates are direct or recalculated
- how city and district context contribute
- how optional future external link ports remain reserved


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation linkage is active now.

Field-map facility events must be able to update:

- nation service coverage
- nation infrastructure state
- nation market legibility
- nation civic visibility
- nation development signals
- nation prestige or stability signals

Life, Business, Game, and Streaming
may keep ports only,
but Nation linkage is operational.


# ============================================================
# 3. ACTIVE AND RESERVED LINKAGE
# ============================================================

active_linkage_domains:
- nation_domain

reserved_linkage_domains:
- life_domain
- business_domain
- game_domain
- streaming_domain


# ============================================================
# 4. FINAL RULE
# ============================================================

Meaningful facility lifecycle events
must not stop at field-map state.
They must be able to alter nation aggregate state.
