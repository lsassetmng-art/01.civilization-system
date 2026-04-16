# ============================================================
# EXPENSE APPROVAL ROUTE POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines detailed approval route policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- multi-step approval is mandatory in the initial release
- approval route must be explicit, explainable, and auditable
- approval route meaning must not change across iphone, android, pc, and tablet
- multilingual display may change labels, but not route meaning
- approval route must remain separate from finance review and ERP publication
- substitute/delegated approval must be controlled and traceable

# ============================================================
# 1. APPROVAL ROUTE DESIGN GOAL
# ============================================================

approval_route_design_goal:
- decide who must review a report before finance review
- make route selection predictable
- make threshold-based branching explicit
- preserve route history even when substitute handling occurs
- avoid hidden or silent route skipping

# ============================================================
# 2. APPROVAL ROUTE INPUT FACTORS
# ============================================================

approval_route_input_factors:
- company_id
- applicant_user_id
- applicant_department_code
- applicant_employment_scope_if_policy_uses_it
- total_amount
- report_currency_code
- converted_total_amount_if_policy_uses_base_currency_threshold
- expense_category_mix
- project_code_presence
- department_code_presence
- advance_settlement_presence
- corporate_card_usage_presence
- exceptional_policy_flag_presence

important_rule:
- route decision must use policy-defined factors only
- hidden ad hoc factors are not allowed

# ============================================================
# 3. BASE APPROVAL MODEL
# ============================================================

base_approval_model:
- every submitted report enters an approval route
- route consists of one or more ordered approval steps
- each step has one decision owner or one approver pool according to policy
- all required steps must be completed before finance review begins
- route must be materialized for audit/history meaning

minimum_route_fields:
- approval_route_id
- expense_report_id
- route_version
- route_reason_summary
- current_step_number
- total_step_count
- route_generated_at

# ============================================================
# 4. ROUTE STEP MODEL
# ============================================================

route_step_model:
- step_number
- step_type
- approver_assignment_type
- approver_user_id_or_pool_ref
- step_required_flag
- threshold_reason_if_any
- step_state
- acted_by_user_id
- acted_at
- action_type
- action_reason

step_type_examples:
- manager_approval
- department_head_approval
- finance_pre_gate_if_policy_uses_it
- special_exception_approval

step_state_examples:
- pending
- available
- acted
- skipped_by_policy
- reassigned_by_governed_rule

# ============================================================
# 5. DEFAULT ROUTE PRINCIPLE
# ============================================================

default_route_principle:
- every report starts from standard route policy for the applicant scope
- standard route should be explainable without custom human interpretation
- if no special threshold or exception applies, the standard route is used
- standard route should be preferred over exception-heavy routing

recommended_default_shape:
- step 1: direct manager approval
- step 2: additional approval if threshold/policy requires
- then finance review begins

# ============================================================
# 6. THRESHOLD-BASED ROUTING RULE
# ============================================================

threshold_based_routing_rule:
- approval route may expand based on policy-defined thresholds
- threshold comparison basis must be explicit
- one company scope should choose whether threshold uses:
  - report total in report currency
  - converted total in policy base currency
- threshold rule must not depend on viewer device or locale formatting

examples_of_threshold_effect:
- below threshold: manager only
- above threshold A: manager + department head
- above threshold B: manager + department head + special approver

important_rule:
- threshold logic must be centrally managed
- approvers must be able to understand why extra step was added

# ============================================================
# 7. CATEGORY-BASED ROUTING RULE
# ============================================================

category_based_routing_rule:
- some categories may require additional approval path
- category-based expansion must be policy-defined, not user-guessed
- mixed-category reports may trigger the strictest applicable route where policy says so
- travel, advance settlement, corporate card, or exception-sensitive categories
  may require route expansion if company policy defines it

important_rule:
- category-based route expansion must remain explainable in route_reason_summary

# ============================================================
# 8. DEPARTMENT / PROJECT-BASED ROUTING RULE
# ============================================================

department_project_routing_rule:
- applicant department may define default approver chain
- project-linked expenses may require project authority approval if policy says so
- when both department and project rules apply, precedence must be policy-defined
- route conflict resolution must be deterministic

recommended_resolution_policy:
- choose one of:
  - stricter_route_wins
  - department_first_then_project
  - project_first_then_department
- do not allow ambiguous mixed runtime choice

# ============================================================
# 9. ADVANCE / CORPORATE CARD ROUTE RULE
# ============================================================

advance_corporate_card_route_rule:
- advance settlement may require additional approval if policy says so
- corporate card usage may have different route requirements from reimbursement items
- mixed reports containing reimbursement + corporate card should follow explicit policy
- app must not assume one universal route for all payment types

# ============================================================
# 10. SPECIAL EXCEPTION ROUTE RULE
# ============================================================

special_exception_route_rule:
- exception-marked reports may require additional governed approval layer
- exception route must be explicit and auditable
- exception route must not silently replace standard route
- exception approval is not the same as ordinary manager approval

# ============================================================
# 11. SUBSTITUTE / DELEGATE APPROVER RULE
# ============================================================

substitute_delegate_approver_rule:
- substitute approval is allowed only if policy explicitly allows it
- substitute must be scope-bound and time-bound
- substitute must be distinguishable in history from ordinary approver
- substitute does not inherit unlimited approval authority
- substitute path must preserve who the original approver was

minimum_substitute_trace:
- original_approver_user_id
- substitute_approver_user_id
- substitution_reason
- substitution_valid_from
- substitution_valid_until
- acted_by_user_id

# ============================================================
# 12. APPROVER ABSENCE RULE
# ============================================================

approver_absence_rule:
- approver absence must not result in silent route skipping
- allowed absence handling patterns must be policy-defined
- examples:
  - delegated substitute
  - escalation to next authority
  - admin-supported reassignment through governed rule
- absence handling must be auditable

not_allowed:
- auto-approve due to timeout without explicit policy
- invisible reassignment
- deleting a blocked step because approver is absent

# ============================================================
# 13. REASSIGNMENT RULE
# ============================================================

reassignment_rule:
- reassignment must be explicit and auditable
- reassignment reason is mandatory
- reassignment should preserve route history and prior pending state meaning
- reassignment must remain inside company/policy scope
- reassignment does not erase the fact that the original route existed

# ============================================================
# 14. ESCALATION RULE
# ============================================================

escalation_rule:
- escalation may exist if company policy defines it
- escalation should be time/condition-based and explicit
- escalation must not change business meaning invisibly
- escalated route must remain visible in route history
- escalation is not the same as substitute handling

examples_of_escalation_trigger:
- pending too long
- approver unavailable
- governance-sensitive category requires higher review

# ============================================================
# 15. PARALLEL VS SEQUENTIAL RULE
# ============================================================

parallel_vs_sequential_rule:
- default interpretation should be sequential unless policy explicitly defines parallel approval
- if parallel approval is supported, completion rule must be explicit:
  - all_required_parallel_steps_complete
  - any_one_of_pool_acts
- parallel semantics must be clearly visible in route design and history

recommendation:
- keep initial route semantics primarily sequential unless strong policy need exists

# ============================================================
# 16. APPROVAL DECISION EFFECT RULE
# ============================================================

approval_decision_effect_rule:
- approve advances route or completes approval_state=approved when final required step is done
- return sends report back to corrective flow
- reject closes current submission cycle
- one negative decision on required step should stop normal forward progression
- finance review must not begin before route completion unless policy explicitly designs a pre-finance step

# ============================================================
# 17. ROUTE REGENERATION RULE
# ============================================================

route_regeneration_rule:
- route is normally generated at submit/resubmit time
- if corrected facts affect route basis, route may regenerate on resubmit
- regenerated route must remain auditable against prior route version
- route must not silently regenerate mid-review unless policy explicitly supports governed reroute
- changed threshold/category/project facts after return may legitimately change route

# ============================================================
# 18. ROUTE VERSIONING RULE
# ============================================================

route_versioning_rule:
- every materially regenerated route should have a new route_version
- route_version history must remain available
- route version explains why approval path changed between cycles
- route versioning is especially important for amount/category/currency-sensitive reports

# ============================================================
# 19. ROUTE EXPLANATION RULE
# ============================================================

route_explanation_rule:
- users should be able to understand why the current route exists
- route explanation should be based on canonical policy reasons
- examples:
  - above threshold A
  - includes corporate card item
  - project approval required
  - exception path enabled
- explanation should appear in route_reason_summary or equivalent support view

# ============================================================
# 20. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- hidden route branching
- device-specific routing differences
- locale/text-based routing decisions
- silent step deletion
- silent approver substitution
- finance acting as approver unless explicitly assigned as approver role too
- admin silently completing approval route
- ERP publication before route completion

# ============================================================
# 21. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact threshold bands
- exact department route matrix
- exact project route precedence
- whether parallel approval is allowed at all
- timeout/escalation exact timing
- substitute validity duration defaults
- whether finance pre-gate step exists for some categories

note:
- this document fixes structure and principles
- exact organization-specific values can be fixed in a later master/policy detail set

# ============================================================
# 22. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps approval routing safe by separating:
- standard route from exception route
- threshold logic from display formatting
- substitute from silent impersonation
- reassignment from history loss
- approval completion from finance readiness

