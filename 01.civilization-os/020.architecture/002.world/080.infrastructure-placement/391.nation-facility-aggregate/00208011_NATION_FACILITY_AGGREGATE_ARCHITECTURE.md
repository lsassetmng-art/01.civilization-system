# ============================================================
# NATION FACILITY AGGREGATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-facility-aggregate
component: nation-facility-aggregate

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical aggregate architecture
for nation-side metrics derived
from field-map facility state.

This architecture defines:

- nation service coverage aggregation
- infrastructure and market metric aggregation
- city and district rollup structure
- nation UI exposure
- nation preview exposure


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation aggregation must convert
facility presence and facility state
into nation-readable metrics.

The user must be able to understand:

- what services the nation has
- where coverage is strong or weak
- how infrastructure has developed
- whether market and civic visibility are improving


# ============================================================
# 3. REQUIRED SUBSYSTEMS
# ============================================================

This layer must include:

- Nation Service Coverage UI Model
- Nation Infrastructure and Market Metric Model
- Nation City District Rollup Model
- Nation Facility Metric Preview Model


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation aggregation must make
facility impact visible at state scale
without exposing low-level map noise directly.
