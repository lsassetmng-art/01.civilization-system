# ============================================================
# SHIFT MANAGER GENERATION ALGORITHM REFINEMENT
# ============================================================

status: implementation-facing-generation-refinement
type: generation-algorithm-refinement
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the initial practical generation algorithm direction
for condition-based automatic draft generation in ShiftManager.

It is not a final optimization engine.
It is the first implementation-ready generation strategy.

# ============================================================
# 2. CORE PRINCIPLES
# ============================================================

core_principles:
- auto generation creates draft only
- generation may succeed even with shortages
- hard rules must not be violated
- soft rules may be relaxed with warnings
- explainability is preferred over opaque optimization
- the output should remain easy for humans to fix afterward

# ============================================================
# 3. INITIAL ALGORITHM TYPE
# ============================================================

initial_algorithm_type:
- staged scoring approach

basic_flow:
1. expand target dates
2. expand slot_requirements
3. collect candidate persons
4. eliminate by hard rules
5. score by soft rules and priority policy
6. assign highest candidates
7. record shortages and warnings
8. save draft assignments

reason:
This is easier to implement and easier to explain
than a strict optimization solver in the first phase.

# ============================================================
# 4. PROCESSING UNIT
# ============================================================

processing_unit:
- one date x one slot

examples:
- 2026-04-08 x morning
- 2026-04-08 x afternoon

meaning:
Each slot is evaluated independently first,
while still referencing already-assigned results
for balancing and continuity checks.

# ============================================================
# 5. CANDIDATE COLLECTION
# ============================================================

candidate_conditions:
- same company
- inside target scope
- weekday matches available_weekdays
- time range matches available_time_ranges
- not in blocked_dates
- not excluded by hard rules

candidate_result:
People who fail these checks are removed
before scoring begins.

# ============================================================
# 6. HARD RULE EVALUATION
# ============================================================

hard_rules:
- respect requested_days_off
- do not exceed max_daily_hours
- do not exceed max_consecutive_days
- do not allow overlapping work in same time
- do not allow invalid time ranges

hard_rule_result:
If a person violates a hard rule,
they must not be assigned.

# ============================================================
# 7. SOFT RULE / SCORE EVALUATION
# ============================================================

scoring_direction:
Candidates that pass hard rules receive scores.

initial_score_direction:
- start from base score
- add or subtract by policy and current draft context

example_score_factors:
positive:
- fewer weekly assignments: +10
- same role continuity: +8
- veteran preference: +5
- lower cost preference: +3

negative:
- too many recent assignments: -10
- continuity risk increase: -15
- imperfect skill/role fit: -20
- imbalance increase: -10

important_note:
Exact score values may be tuned later,
but the factor categories should remain stable.

# ============================================================
# 8. REQUIRED ROLE FIRST-FILL RULE
# ============================================================

required_role_handling:
If slot_requirements.required_roles exist,
required role positions must be filled first.

example:
required_headcount = 3
required_roles:
- cashier = 1
- leader = 1

recommended_order:
1. fill cashier requirement
2. fill leader requirement
3. fill remaining general headcount

reason:
This prevents general assignment from consuming
people needed for mandatory role slots.

# ============================================================
# 9. SLOT PRIORITY ORDER
# ============================================================

recommended_slot_priority:
1. slots with more required_roles
2. slots with larger required_headcount
3. slots with fewer available candidates
4. the rest

meaning:
Harder slots should be filled first.

# ============================================================
# 10. CONTINUITY / BALANCE CONTROL
# ============================================================

balance_control_inputs:
- current weekly assignment count
- recent consecutive work days
- already assigned work in same day
- prior use inside current generation run

recommended_behavior:
Apply negative score pressure
to people who are already used too much,
so the result becomes easier to operate and fairer.

# ============================================================
# 11. FALLBACK POLICY
# ============================================================

fallback_policy:
- hard rules remain absolute
- soft rules may be relaxed
- when relaxed, warnings must be created

typical_fallback_warnings:
- priority_fallback
- skill_shortage
- imbalance_warning

reason:
Partial useful output is better than silent failure,
as long as the user can review and fix it.

# ============================================================
# 12. UNASSIGNED POLICY
# ============================================================

unassigned_policy:
If a slot cannot be safely filled,
it should remain unassigned.

required_behavior:
- do not force unsafe assignment
- create unassigned_slot warning
- preserve shortage for review screen
- let human fix it afterward

# ============================================================
# 13. GENERATION RESULT CREATION
# ============================================================

required_result_outputs:
- generated_assignment_count
- unassigned_count
- warning_count
- result_summary_json

recommended_result_summary_fields:
- filled_slots
- unfilled_slots
- fallback_assignments
- role_shortage_count

meaning:
Generation should always leave an explainable summary.

# ============================================================
# 14. WARNING CREATION
# ============================================================

warning_creation_policy:
Warnings should be recorded during generation,
not reconstructed only later.

initial_warning_types:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

recommended_initial_rule:
One event may produce one warning row.
Do not over-compress warning logic in phase one.

# ============================================================
# 15. OVERWRITE POLICY IMPLEMENTATION DIRECTION
# ============================================================

create_new_schedule:
- create a new schedule
- safest mode

replace_existing_draft:
- replace existing draft assignments
- do not touch publication state

merge_into_existing_draft:
- merge into existing draft
- most complex mode

recommended_phase_order:
phase_1_supported:
- create_new_schedule
- replace_existing_draft

later_phase:
- merge_into_existing_draft

# ============================================================
# 16. INITIAL NON-GOALS
# ============================================================

initial_non_goals:
- global optimization solver
- exact cost minimization solver
- cross-department enterprise-wide optimization
- machine learning based assignment
- advanced merge conflict resolution

meaning:
The first implementation should stay practical and explainable.

# ============================================================
# 17. PSEUDO FLOW
# ============================================================

pseudo_flow:
target_period_expand
-> business_days_filter
-> slot_requirements_expand
-> sort_harder_slots_first
-> collect_candidates_per_slot
-> hard_rule_elimination
-> required_roles_fill_first
-> score_remaining_candidates
-> assign_best_candidates
-> if fallback_used then create_warning
-> if still unfilled then create_unassigned_warning
-> save_shift_assignment_rows
-> save_generation_result
-> save_generation_warning_rows

# ============================================================
# 18. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- phase one uses staged scoring
- hard rules are absolute
- soft rules may relax with warnings
- required roles are filled first
- harder slots are processed first
- shortages remain visible
- merge mode may be delayed to a later phase

# ============================================================
# 19. CONCLUSION
# ============================================================

The initial ShiftManager generation algorithm should prioritize:
- safety
- explainability
- reviewability
- ease of human correction

It should not attempt perfect optimization first.
It should produce a practical draft
that managers can trust and refine.

