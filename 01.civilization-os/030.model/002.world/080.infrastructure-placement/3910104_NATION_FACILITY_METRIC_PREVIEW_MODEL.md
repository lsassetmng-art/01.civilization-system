# ============================================================
# NATION FACILITY METRIC PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-facility-metric-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW CONTEXTS
# ============================================================

preview_contexts:
- nation_builder_preview
- field_build_confirmation_preview
- field_replacement_preview
- nation_comparison_preview


# ============================================================
# 2. REQUIRED PREVIEW FIELDS
# ============================================================

required_preview_fields:
- target_nation_id
- target_metric_dimension
- current_value
- projected_value
- delta_value
- primary_reason
- confidence_style


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview should help users understand
what opening or removing a facility
is likely to do to nation metrics.
