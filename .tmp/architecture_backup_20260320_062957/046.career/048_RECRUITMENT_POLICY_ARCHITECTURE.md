# ============================================================
# RECRUITMENT POLICY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Recruitment policy defines company hiring configuration.

fields:
- company_id
- written_exam_enabled
- interview_rounds
- official_interview_required
- practice_interview_enabled_after_experience

rules:
- written_exam_enabled is configurable per company
- interview_rounds must be configurable from 0 to 10
- policy changes must not retroactively alter completed official evaluations
- practice interview must be separated from official interview
- practice data must not overwrite official hiring evaluation

selection_structure_examples:
- no_written_exam + 0_interviews
- no_written_exam + 3_interviews
- written_exam + 2_interviews
- written_exam + 10_interviews

internship_policy:
- internship_enabled optional
- internship requires school recommendation only

final_rule:
Recruitment policy must explicitly define official evaluation structure
and must separate practice from formal hiring judgment.
