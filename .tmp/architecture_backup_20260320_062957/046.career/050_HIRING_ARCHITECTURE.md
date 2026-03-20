# ============================================================
# HIRING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Hiring finalizes employment decision from completed official selection results.

outputs:
- hired
- rejected

decision_inputs:
- official_written_exam_result_if_required
- official_interview_results_if_required
- company policy
- application validity

rules:
- only official selection results may affect hiring
- practice written exams and practice interviews must not affect hiring decision
- hiring decision must be explicit and final-state transition
- no company may silently auto-hire without configured rules

event_flow:
- official_selection_completed
- hiring_decision_requested
- hiring_decision_published
- employment_created_if_hired

final_rule:
Hiring decisions must rely only on official selection outputs.
