# ============================================================
# TEXT TEMPLATE VARIATION MODEL
# ============================================================

status: canonical
layer: model
scope: event-and-ui-foundation
component: text-template-variation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VARIATION AXES
# ============================================================

variation_axes:
- nation_variation
- city_variation
- class_variation
- religion_variation
- office_variation
- mood_variation
- success_failure_variation
- formal_informal_variation


# ============================================================
# 2. TEMPLATE FIELDS
# ============================================================

template_fields:
- template_id
- base_text_key
- variation_axis_set
- fallback_rule
- tone_rule
- title_rule
- result_summary_rule
- history_record_rule


# ============================================================
# 3. FINAL RULE
# ============================================================

The same event must support
different wording by nation,
class, religion, and result state.
