# ============================================================
# IMPLEMENTATION BRIDGE SEQUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: implementation-bridge-sequence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical lookup sequence
for downstream implementation.


# ============================================================
# 2. LOOKUP SEQUENCES
# ============================================================

lookup_sequences:
- nation_lookup_sequence
- builder_lookup_sequence
- life_event_lookup_sequence
- work_ui_lookup_sequence
- permission_lookup_sequence
- persistence_lookup_sequence
- ai_assist_lookup_sequence
- validation_lookup_sequence


# ============================================================
# 3. CANONICAL LIFE EVENT LOOKUP
# ============================================================

canonical_life_event_lookup:
- resolve_event_family_id
- load_event_ui_binding
- load_nation_variation_binding
- load_text_template_binding
- load_slot_bindings
- load_permission_and_lock_binding
- run_validation_and_fallback_binding
- resolve_result_and_history_binding


# ============================================================
# 4. CANONICAL WORK UI LOOKUP
# ============================================================

canonical_work_ui_lookup:
- resolve_job_id
- load_work_ui_binding
- load_nation_variation_binding
- load_ai_assist_binding
- load_permission_and_lock_binding
- run_validation_and_fallback_binding
- resolve_result_and_history_binding


# ============================================================
# 5. FINAL RULE
# ============================================================

Implementation lookup order
must be fixed enough
to remain debuggable and auditable.
