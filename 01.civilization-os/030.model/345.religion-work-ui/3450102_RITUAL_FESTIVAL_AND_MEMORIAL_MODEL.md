# ============================================================
# RITUAL FESTIVAL AND MEMORIAL MODEL
# ============================================================

status: canonical
layer: model
scope: religion-work-ui
component: ritual-festival-and-memorial

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RITUAL TYPES
# ============================================================

ritual_types:
- daily_worship
- weekly_service
- blessing_ritual
- marriage_ritual
- childbirth_blessing
- funeral_ritual
- memorial_ritual
- healing_ritual
- state_prayer_ritual
- festival_ritual


# ============================================================
# 2. FESTIVAL FIELDS
# ============================================================

festival_fields:
- festival_id
- festival_scale
- clergy_requirement
- decoration_requirement
- donation_requirement
- attendance_expectation
- civic_visibility
- doctrine_sensitivity
- economic_effect_weight


# ============================================================
# 3. MEMORIAL FIELDS
# ============================================================

memorial_fields:
- memorial_id
- memorial_class
- deceased_scope
- grief_intensity
- family_visibility
- public_visibility
- symbolic_weight
- historical_record_weight


# ============================================================
# 4. FINAL RULE
# ============================================================

Religion must support
ordinary ritual,
peak festival,
and grief-bearing memorial work
as separate but connected operations.
