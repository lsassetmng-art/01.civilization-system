# ============================================================
# EDUCATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Education is the structured learning progression of the player.

stages:
- kindergarten
- elementary
- junior_high
- high_school
- university

purpose:
- shape skill growth
- gate future opportunities
- connect exam and life progression

rules:
- school progression is event-driven
- eligibility must be explicit
- education outcome affects but does not directly overwrite other domains

event_flow:
- school_enrollment_requested
- exam_requirement_checked
- enrollment_confirmed
- education_progress_updated
- graduation_event

constitution_alignment:
- event-driven progression
- auditable gating

final_rule:
Education progression must be explicit, staged, and traceable.
