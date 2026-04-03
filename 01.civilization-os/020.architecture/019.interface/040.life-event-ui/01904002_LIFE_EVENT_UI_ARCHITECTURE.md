# ============================================================
# LIFE EVENT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: life-event-ui
component: life-event-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for player-facing life events,
including event entry,
decision flow,
decoration and item selection,
result presentation,
and long-term event memory.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Life Event UI must separate:

- event overview
- eligibility and requirement display
- player choice flow
- decoration and item selection
- text and tone rendering
- result presentation
- history and memorial storage

No life event should appear
as an unstructured modal without
requirements, context, or memory.


# ============================================================
# 3. SUPPORTED LIFE EVENT FAMILIES
# ============================================================

supported_life_event_families:
- school_entry
- graduation
- employment_start
- promotion
- transfer
- engagement
- marriage
- childbirth
- household_move
- illness_or_recovery
- retirement
- funeral
- inheritance
- family_business_succession


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- event_notice_layer
- event_overview_layer
- requirement_layer
- decision_layer
- decoration_layer
- item_usage_layer
- preview_layer
- confirmation_layer
- result_layer
- history_record_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Life Event UI must make events feel
playable, legible, consequential,
and worth remembering.
