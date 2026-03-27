# ============================================================
# EDUCATION WORK UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: education-work-ui
component: education-work-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for education work,
including class operation,
teacher allocation,
curriculum execution,
examination management,
student guidance,
school events,
and progression support.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Education Work UI must separate:

- school context
- class and grade operation
- teacher staffing
- curriculum and lesson control
- student performance and behavior control
- event and ceremony operation
- guidance and progression support
- school history persistence

No education UI should reduce schooling
to a simple student list
without instructional rhythm,
guidance logic,
or event structure.


# ============================================================
# 3. SUPPORTED EDUCATION OPERATION FAMILIES
# ============================================================

supported_education_operation_families:
- compulsory_school_operation
- elite_school_operation
- legal_or_administrative_school_operation
- technical_school_operation
- arts_school_operation
- military_prep_school_operation
- island_community_school_operation
- doctrine_filtered_school_operation


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- school_overview_layer
- class_and_grade_layer
- teacher_assignment_layer
- curriculum_layer
- exam_and_evaluation_layer
- guidance_layer
- event_and_ceremony_layer
- discipline_and_support_layer
- ai_assist_layer
- result_summary_layer
- school_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Education UI must make school work feel
scheduled, developmental,
institutional, and socially consequential.
