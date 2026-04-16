# ============================================================
# PRODUCT PORTFOLIO MANAGER ROLE AND APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level constraints for role usage,
approval necessity, and separation of duties.

policy_principles:
- authority should be least-sufficient
- approval should be explicit where business impact is high
- separation of duties should be preserved where practical
- operational convenience must not collapse role boundaries

# ============================================================
# 1. APPROVAL-REQUIRED EXAMPLES
# ============================================================

approval_required_examples:
- change to retire_candidate classification
- change from improve to focus where policy marks it high impact
- approval-requiring product_action_proposal types
- review decisions that create organization-level commitments
- share scope expansion to broader organizational visibility where policy requires

# ============================================================
# 2. APPROVAL-OPTIONAL EXAMPLES
# ============================================================

approval_optional_examples:
- low-impact draft creation
- note/comment creation
- review session drafting
- internal comparison activity
- allowed direct finalization by manager where policy explicitly permits it

# ============================================================
# 3. SEPARATION OF DUTIES
# ============================================================

separation_of_duties_rules:
- creator and approver should be distinct by default
- review organizer and final approver should be distinct by default
- admin does not automatically bypass process justification
- policy exceptions must be explicit and auditable

# ============================================================
# 4. ROLE ASSIGNMENT POLICY
# ============================================================

role_assignment_policy:
- roles are assigned intentionally per workspace or equivalent authority scope
- approver role should be narrower than broad editor assignment
- auditor role should avoid accidental business edit expansion
- temporary elevated authority should be time-bounded where possible

# ============================================================
# 5. SHARE AND VISIBILITY POLICY LINK
# ============================================================

share_visibility_link:
- sharing affects who may see
- sharing does not automatically grant edit or approval authority
- limited share should remain bounded by role capability

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Role and approval policy in ProductPortfolioManager
must preserve explicit responsibility,
clear final-decision ownership,
and auditable separation of duties.
