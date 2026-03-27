# ============================================================
# LIFE EVENT ITEM USAGE MODEL
# ============================================================

status: canonical
layer: model
scope: life-event-ui
component: life-event-item-usage

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ITEM USAGE TYPES
# ============================================================

item_usage_types:
- required_consumable
- optional_consumable
- symbolic_required_item
- prestige_boost_item
- cost_reduction_item
- narrative_only_item
- religion_locked_item
- nation_locked_item
- quality_tier_item
- memory_record_item


# ============================================================
# 2. ITEM SLOT FIELDS
# ============================================================

item_slot_fields:
- item_slot_id
- item_slot_name
- item_usage_type
- item_required
- item_quantity_rule
- compatible_item_tags
- incompatible_item_tags
- quality_modifier_rule
- cost_modifier_rule
- narrative_modifier_rule
- result_modifier_rule


# ============================================================
# 3. ITEM RULES
# ============================================================

item_rules:
- required_items_must_be_resolved_before_final_confirmation
- optional_items_may_be_left_empty
- quality_tier_items_may_modify prestige_or_result_tone
- memory_record_items_may_unlock album assets
- nation_locked_items_must_be filtered by nation rules
- religion_locked_items_must_be filtered by religion rules
- incompatible_items_must_be rejected before commit


# ============================================================
# 4. FINAL RULE
# ============================================================

Item usage must support
cost, prestige, symbolism,
and memory creation separately.
