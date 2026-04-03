# ============================================================
# EXAM EVALUATION AND PROGRESS MODEL
# ============================================================

status: canonical
layer: model
scope: education-work-ui
component: exam-evaluation-and-progress

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXAM FIELDS
# ============================================================

exam_fields:
- exam_id
- exam_type
- exam_weight
- ranking_visibility
- pass_threshold
- remedial_supported
- progression_impact
- guidance_followup_required


# ============================================================
# 2. EXAM TYPES
# ============================================================

exam_types:
- routine_test
- term_exam
- advancement_exam
- entrance_preparation_exam
- legal_track_exam
- technical_skill_exam
- arts_performance_exam
- doctrine_or_loyalty_exam
- aptitude_review


# ============================================================
# 3. PROGRESS ACTIONS
# ============================================================

progress_actions:
- run_exam_cycle
- publish_or_hide_rankings
- assign_remedial_support
- assign_high_achievement_track
- recommend_track_change
- trigger_parent_or_guardian_contact
- open_guidance_intervention
- hold_back_progression_review


# ============================================================
# 4. FINAL RULE
# ============================================================

Evaluation must define
who advances smoothly,
who receives support,
and who is filtered into different futures.
