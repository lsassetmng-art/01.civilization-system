# ============================================================
# LIFE EVENT DECORATION SLOT MODEL
# ============================================================

status: canonical
layer: model
scope: life-event-ui
component: life-event-decoration-slot

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DECORATION SLOT TYPES
# ============================================================

decoration_slot_types:
- background
- ceremony_style
- venue_style
- clothing_style
- floral_style
- table_style
- symbolic_object
- religious_object
- memorial_object
- lighting_style
- banner_or_signage
- invitation_style
- music_theme
- photo_frame_style


# ============================================================
# 2. SLOT FIELDS
# ============================================================

slot_fields:
- slot_id
- slot_type
- slot_required
- slot_visibility_rule
- compatible_event_families
- compatible_nation_rules
- compatible_religion_rules
- compatible_class_rules
- default_fallback_rule
- aesthetic_effect_tags
- narrative_effect_tags


# ============================================================
# 3. DECORATION RULES
# ============================================================

decoration_rules:
- required_slots_must_be_filled_before_confirmation_if_marked_required
- incompatible_slots_must_be_rejected_before_confirmation
- nation_locked_slots_must_not_be_shown_as_selectable
- religion_locked_slots_must_not_be_shown_as_selectable
- decoration_changes_may_modify_text_and_result_tone
- decoration_changes_may_not_silently_override required_items


# ============================================================
# 4. FINAL RULE
# ============================================================

Decoration slots must support
visible cultural difference
without breaking event logic.
