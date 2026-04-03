# ============================================================
# CROSS LAYER FAILURE AND FALLBACK MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-failure-and-fallback

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FAILURE TYPES
# ============================================================

failure_types:
- facility_event_missing_context
- nation_linkage_skipped
- aggregate_update_failed
- preview_evaluation_failed
- ui_refresh_deferred
- metric_target_unknown


# ============================================================
# 2. FALLBACK RULES
# ============================================================

fallback_rules:
- facility state remains committed even if nation UI refresh is deferred
- failed preview must degrade to no-preview notice rather than false projection
- aggregate update failure must be audit-visible
- missing metric target must not silently invent a mapping


# ============================================================
# 3. FINAL RULE
# ============================================================

Cross-layer failure handling
must protect consistency
before convenience.
