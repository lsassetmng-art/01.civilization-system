# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for review session interpretation,
decision meaning,
and boundary with approval.

policy_principles:
- review session is a governed business discussion surface
- review decision is not always identical to final approval
- review inclusion should remain explainable
- review records should remain attributable and historically visible

# ============================================================
# 1. REVIEW DECISION POLICY
# ============================================================

review_decision_policy:
- review decisions represent structured business conclusions at review time
- some decisions may be final under policy
- some decisions may require later approval
- held or recheck decisions remain open judgment states

# ============================================================
# 2. APPROVAL BOUNDARY POLICY
# ============================================================

approval_boundary_policy:
- review completion does not imply automatic approval
- approval-requiring decisions must be routed explicitly
- approver authority is separate from review recording authority by default

# ============================================================
# 3. TARGET INCLUSION POLICY
# ============================================================

target_inclusion_policy:
- target inclusion should be explainable from alerts, scores, proposals, filters, or management choice
- silent unexplained inclusion is disfavored
- removal of targets from an active session should remain understandable when important

# ============================================================
# 4. RECORD PRESERVATION POLICY
# ============================================================

record_preservation_policy:
- completed sessions should remain historically visible
- archived sessions remain part of explainability history
- review comments and decisions should not be casually erased

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session policy in ProductPortfolioManager
must preserve explicit comparison, bounded decision meaning,
and clear separation from approval authority.
