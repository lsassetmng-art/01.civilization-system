# ============================================================
# EXAM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Exam is a controlled evaluation system used for education,
qualification, and selection.

purpose:
- measure player knowledge and preparation
- determine eligibility for schools, jobs, and certifications
- separate official evaluation from practice and countermeasure use

principles:
- no direct state mutation
- only official exam results affect formal evaluation
- practice attempts never overwrite or alter official evaluation
- user answer is primary final submission input
- all official results are event-driven and immutable after publication

exam_modes:
- official_exam
- practice_exam

official_exam:
definition:
Formal attempt used for progression and evaluation.

properties:
- evaluated officially
- affects pass/fail, admission, qualification, hiring gates
- immutable after finalization
- requires explicit submission and backend evaluation

practice_exam:
definition:
Replayable countermeasure mode for already experienced exams.

properties:
- unlimited retries allowed after the exam has been experienced
- does not affect formal evaluation
- stored as practice history
- used for review, correction, and preparation

core_entities:
- exam_definition
- exam_session
- exam_attempt
- answer_sheet
- official_result
- practice_attempt
- exam_event_log

exam_definition:
contains:
- exam_id
- exam_type
- eligibility_rules
- question_set_reference
- scoring_policy
- passing_threshold
- time_limit
- publication_policy
- practice_enabled_after_experience

exam_session:
contains:
- session_id
- exam_id
- actor_id
- mode
- start_time
- end_time
- state

session_states:
- created
- started
- submitted
- under_evaluation
- finalized
- published
- closed

official_result:
contains:
- official_result_id
- exam_id
- actor_id
- score
- pass_fail
- evaluated_at
- immutable_flag

practice_attempt:
contains:
- practice_attempt_id
- exam_id
- actor_id
- based_on_experienced_exam_flag
- answer_payload
- simulated_score
- feedback
- created_at

rules:
- only official_exam produces formal evaluation
- practice_exam is allowed only for exams already taken or officially experienced
- practice_exam may store simulated score and feedback
- practice data must not alter official pass/fail
- official_result is append-only after finalization
- correction of official_result requires explicit correction event and audit trail

official_event_flow:
- exam_session_created
- exam_session_started
- exam_answer_submitted
- exam_evaluation_requested
- exam_evaluated
- exam_result_finalized
- exam_result_published
- progression_update_requested
- progression_updated

practice_event_flow:
- practice_exam_requested
- practice_eligibility_checked
- practice_session_started
- practice_answer_submitted
- practice_feedback_generated
- practice_history_recorded

security_rules:
- no direct score injection
- no direct pass/fail mutation
- practice feedback must be distinguished from official evaluation
- backend is authoritative for official result

constitution_alignment:
- event-only state transition
- no direct mutation
- explicit permission model
- fail-closed execution

final_rule:
Only official exam results may affect evaluation or progression.
Practice attempts exist only for preparation and review.
