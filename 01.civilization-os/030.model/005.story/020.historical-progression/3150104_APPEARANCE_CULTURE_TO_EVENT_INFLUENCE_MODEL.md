# ============================================================
# APPEARANCE CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: appearance-clothing-uniform-and-formalwear-culture-seed
component: appearance-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- everyday_uniformity_tendency modifies visible social cohesion events
- visible_class_gap_tendency modifies prestige comparison and exclusion events
- formalwear_importance_tendency modifies marriage, funeral, and civic ceremony events
- workwear_functionality_tendency modifies labor identity and worker-life events
- military_style_visibility_tendency modifies service and authority presence events
- school_uniform_strength_tendency modifies school identity and youth conformity events
- company_dress_code_strength_tendency modifies hiring and workplace culture events
- ritualwear_visibility_tendency modifies religious observance and festival visibility events
- individuality_in_dress_tendency modifies self-expression and subculture events
- luxury_material_visibility_tendency modifies elite hospitality and wealth-display events
- repair_and_reuse_clothing_tendency modifies hardship visibility and household resilience events
- climate_adapted_clothing_tendency modifies seasonal life and local adaptation events


# ============================================================
# 2. FINAL RULE
# ============================================================

Appearance-culture indicators must be usable
as modifiers for class, ceremony, school, labor, and festival events.
