# ============================================================
# ENTRANCE EXAM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Entrance exam determines eligibility for school admission.

purpose:
- evaluate school admission candidates
- support persona-assisted answering with player correction
- separate official admission judgment from later practice use

exam_modes:
- official_exam
- practice_exam

official_exam:
- used for actual school admission judgment
- produces formal admission evaluation
- one official result per official attempt
- official result affects admission only through explicit events

practice_exam:
- available only after the exam has been experienced
- used for review and next-attempt preparation
- does not alter official admission judgment
- stores practice history only

answer_flow:
- exam_started
- persona_answer_generated
- answer_preview_presented
- user_override_optional
- final_submission
- backend_evaluation
- admission_decision_event

persona_assist_rules:
- persona may generate draft answers based on intelligence parameters
- player may review and correct answers before submission
- final submitted answer is always the player-confirmed answer
- persona draft and user override must be distinguishable in audit history

school_level_configuration:
- school_id
- entrance_exam_required
- entrance_exam_type
- practice_enabled_after_experience

rules:
- if entrance_exam_required = false, direct admission route may apply
- if entrance_exam_required = true, official exam flow is mandatory
- official admission judgment must use official exam result only
- practice attempts must never mutate official admission history

official_event_flow:
- school_application_created
- entrance_exam_required_checked
- official_entrance_exam_started
- official_answer_submitted
- official_exam_evaluated
- admission_decision_published

practice_event_flow:
- entrance_exam_practice_requested
- experienced_exam_verified
- practice_session_started
- practice_feedback_recorded

constitution_alignment:
- player remains final decision actor
- event-driven evaluation only
- no hidden score overwrite
- no direct admission mutation

final_rule:
School admission may be judged only from official entrance exam results.
Practice exists only for countermeasure and review.
