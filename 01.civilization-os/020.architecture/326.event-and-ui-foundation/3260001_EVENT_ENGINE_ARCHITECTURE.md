# ============================================================
# EVENT ENGINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: event-and-ui-foundation
component: event-engine

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for event triggering,
event branching,
event resolution,
event presentation,
and event persistence
across Civilization seed-world systems.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Every event must separate:

- trigger condition
- availability condition
- player-visible decision
- hidden resolution logic
- result package
- persistence and history

No event may directly mix all layers
into a single opaque block.


# ============================================================
# 3. EVENT PIPELINE
# ============================================================

canonical_event_pipeline:
- trigger_detected
- trigger_validated
- availability_checked
- ui_permission_checked
- template_selected
- player_or_system_decision_resolved
- success_failure_roll_resolved
- result_package_generated
- world_state_applied
- history_record_written


# ============================================================
# 4. EVENT CLASSES
# ============================================================

event_classes:
- life_event
- work_event
- political_event
- crisis_event
- ceremony_event
- social_event
- hidden_background_event
- regime_change_event


# ============================================================
# 5. FINAL RULE
# ============================================================

The event engine must make visible
what the player can choose,
what the system resolves,
and what the world remembers.
