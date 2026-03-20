# ============================================================
# INTERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Interview evaluates candidate suitability in the hiring process.

purpose:
- assess candidate fit across one or more rounds
- separate official interview evaluation from mock interview practice
- preserve interview history for preparation without corrupting formal results

interview_modes:
- official_interview
- practice_interview

official_interview:
- part of formal hiring flow
- follows company recruitment policy
- round count is configurable from 0 to 10
- produces formal round evaluation records
- affects hiring decision only through explicit official results

practice_interview:
- available only after the company or interview type has been experienced
- used for countermeasure and preparation
- records feedback and simulated evaluation only
- never alters official hiring judgment

official_entities:
- interview_process_id
- company_id
- player_id
- round_number
- round_result
- evaluator_notes
- official_flag

practice_entities:
- practice_interview_id
- company_id
- player_id
- based_on_experienced_process_flag
- simulated_feedback
- created_at

official_flow:
- application_accepted_for_selection
- interview_round_scheduled
- interview_round_conducted
- round_evaluation_recorded
- next_round_decided
- hiring_decision_published

practice_flow:
- interview_practice_requested
- experience_verified
- mock_interview_started
- mock_feedback_generated
- practice_history_recorded

rules:
- official interview results only affect hiring
- practice interview history exists only for preparation
- companies may set 0 interview rounds
- companies may set written exam on/off independently of interview count
- each official round must be recorded separately
- no silent merge of practice feedback into official evaluation

constitution_alignment:
- explicit evaluation only
- no direct mutation
- auditability preserved
- fail closed on invalid process state

final_rule:
Only official interview rounds may affect hiring decisions.
Practice interviews exist only for preparation and review.
