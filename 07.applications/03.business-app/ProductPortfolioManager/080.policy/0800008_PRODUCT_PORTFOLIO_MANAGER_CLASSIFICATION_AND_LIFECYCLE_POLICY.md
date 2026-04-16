# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for interpreting lifecycle and classification.

policy_principles:
- lifecycle should not silently become classification
- classification should remain explicit and reviewable
- high-impact classification changes may require approval
- lifecycle interpretation should remain consistent across screens and locales

# ============================================================
# 1. LIFECYCLE POLICY
# ============================================================

lifecycle_policy:
- lifecycle expresses business phase context
- lifecycle may be sourced or inferred according to policy, but meaning must remain consistent
- retired lifecycle should not be confused with retire_candidate classification
- unknown lifecycle is acceptable when confidence is not sufficient

# ============================================================
# 2. CLASSIFICATION POLICY
# ============================================================

classification_policy:
- classification is strategic portfolio meaning
- classification should carry reason context when changed
- classification should be explainable from supporting context
- classification should not silently change because of score recalculation alone

# ============================================================
# 3. RELATION POLICY
# ============================================================

relation_policy:
- launch products may be focus, growth, test, or other classifications
- mature products may still be focus or profit_core
- decline products may still be maintain under some business strategies
- retire_candidate requires explicit strategic meaning, not mere lifecycle decline

# ============================================================
# 4. CHANGE POLICY
# ============================================================

change_policy:
- lifecycle updates and classification changes are separate actions
- classification updates should be historically visible
- approval may be required for high-impact classification transitions
- policy exceptions should remain explicit and auditable

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle and classification policy in ProductPortfolioManager
must preserve clear meaning boundaries
while still allowing lifecycle context to inform strategic review.
