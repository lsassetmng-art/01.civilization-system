# ============================================================
# VISIBLE AREA DIFFERENTIAL UPDATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: visible-area-differential-update
component: visible-area-differential-update

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Visible or focal map regions
may update at higher cadence
than non-visible regions.

This must remain compatible with
truth-preserving batch catchup.

# ============================================================
# 2. FINAL RULE
# ============================================================

Visible-area differential update architecture must remain:

- focal-aware
- batch-compatible
- truth-preserving
