# ============================================================
# WORK UI FOUNDATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: work-ui-foundation
component: work-ui-foundation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for profession-oriented work UI,
including daily task handling,
resource control,
personnel control,
trouble response,
decision execution,
and work-history persistence.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Work UI must separate:

- role context
- daily loop
- periodic loop
- resource and personnel state
- player actions
- AI-assist suggestions
- result and history output

No profession UI should be only
a flat action list without
role logic, operational rhythm,
or consequence visibility.


# ============================================================
# 3. SUPPORTED WORK FAMILIES
# ============================================================

supported_work_families:
- administration
- education
- military_support
- railway
- retail
- logistics
- agriculture
- fishery
- medical
- religion
- construction
- manufacturing
- finance
- research
- media
- port_operations


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- role_overview_layer
- today_task_layer
- periodic_task_layer
- resource_layer
- personnel_layer
- action_execution_layer
- incident_response_layer
- ai_assist_layer
- result_summary_layer
- work_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Work UI must make daily labor feel
structured, role-specific,
decision-sensitive, and persistent.
