# ============================================================
# JOB APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Job application initiates a company-specific hiring process.

selection_path_inputs:
- company recruitment policy
- written exam enabled/disabled
- interview rounds 0-10
- recommendation requirement if internship path

rules:
- application must not auto-approve
- selection route must be resolved from company policy
- official written exam and official interviews affect hiring only through explicit official results
- practice history may inform player preparation but must not mutate official evaluation

event_flow:
- application_submitted
- recruitment_policy_loaded
- selection_route_resolved
- written_exam_path_started_if_enabled
- interview_path_started_if_required
- final_hiring_decision_requested

final_rule:
Applications must enter an explicit company-defined selection route.
