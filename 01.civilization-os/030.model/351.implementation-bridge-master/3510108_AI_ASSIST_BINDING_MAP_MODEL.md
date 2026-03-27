# ============================================================
# AI ASSIST BINDING MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: ai-assist-binding-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical binding
for AI assist behaviors
across life events, work UI,
and governance UI.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

ai_assist_binding_fields:
- assist_context_id
- assist_family
- supported_functions
- automation_ceiling
- restricted_action_class_refs
- nation_tone_ref
- rationale_template_ref
- history_write_required
- emergency_expansion_rule
- player_override_rule


# ============================================================
# 3. ASSIST FAMILIES
# ============================================================

assist_families:
- life_event_assist
- work_ui_assist
- governance_assist
- emergency_assist


# ============================================================
# 4. FINAL RULE
# ============================================================

AI assist must define
what it may suggest,
what it may do,
what it must explain,
and what it must never hide.
