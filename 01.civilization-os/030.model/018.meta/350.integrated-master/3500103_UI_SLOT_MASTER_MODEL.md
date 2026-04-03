# ============================================================
# UI SLOT MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: integrated-master
component: ui-slot-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical master structure
for UI slot references across life event UI
and work UI systems.


# ============================================================
# 2. SLOT FAMILIES
# ============================================================

slot_families:
- life_event_decoration_slots
- life_event_item_slots
- life_event_result_blocks
- work_ui_common_components
- work_ui_specialized_components
- governance_builder_tabs
- nation_builder_tabs


# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

ui_slot_master_fields:
- slot_id
- slot_family
- slot_name
- compatible_event_or_job_families
- nation_variation_supported
- religion_variation_supported
- class_variation_supported
- visibility_rule
- required_or_optional
- fallback_rule


# ============================================================
# 4. FINAL RULE
# ============================================================

UI slot definitions must be lookup-ready
for future implementation and balancing.
