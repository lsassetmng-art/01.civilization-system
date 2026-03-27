# ============================================================
# EVENT UI BINDING MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: event-ui-binding-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical binding
between event families,
UI flows,
result models,
and history outputs.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

event_ui_binding_fields:
- event_family_id
- event_class
- trigger_model_ref
- result_model_ref
- text_template_ref
- ui_flow_ref
- decoration_slot_ref_set
- item_slot_ref_set
- result_presentation_ref
- history_output_ref
- followup_event_ref_set


# ============================================================
# 3. REQUIRED EVENT UI FAMILIES
# ============================================================

required_event_ui_families:
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
# 4. FINAL RULE
# ============================================================

Every player-facing event
must bind trigger, UI, result,
text, and history in one lookup chain.
