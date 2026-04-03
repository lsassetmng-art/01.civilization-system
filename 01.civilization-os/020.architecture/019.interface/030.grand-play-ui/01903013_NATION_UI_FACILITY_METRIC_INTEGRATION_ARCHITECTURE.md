# ============================================================
# NATION UI FACILITY METRIC INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-ui-facility-metric-integration
component: nation-ui-facility-metric-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical integration architecture
for injecting facility-derived nation metrics
into Nation Builder,
Nation Overview,
Nation Detail,
and Nation Comparison UI.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation UI must expose facility-derived metrics
without collapsing them into abstract noise.

Users must be able to see:

- current nation service coverage
- infrastructure and market indicators
- city and district imbalance
- projected changes from facility additions or removals


# ============================================================
# 3. REQUIRED UI TARGETS
# ============================================================

required_ui_targets:
- nation_builder
- nation_overview
- nation_detail
- nation_comparison
- nation_preview


# ============================================================
# 4. FINAL RULE
# ============================================================

Facility-derived nation metrics
must remain visible enough
to guide nation design decisions.
