# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for ERP references and ERP boundary handling.

policy_principles:
- facts and judgments must remain distinguishable
- copied facts for judgment support do not become re-owned facts
- policy must prevent accidental authority drift
- user-facing convenience must not imply source transfer

# ============================================================
# 1. FACT INTERPRETATION POLICY
# ============================================================

fact_interpretation_policy:
- ERP-derived sales, cost, profit-basis, and inventory values remain ERP-origin facts
- product_metric_snapshot is a reference copy for judgment interpretation
- score and classification remain application meaning, not ERP meaning
- display layers should avoid source ambiguity

# ============================================================
# 2. MUTATION POLICY
# ============================================================

mutation_policy:
- ProductPortfolioManager should not freely mutate ERP truth
- any future ERP-affecting flow must be explicitly separated and policy-reviewed
- review, approval, and completion states do not implicitly equal ERP mutation

# ============================================================
# 3. UI/OPERATOR INTERPRETATION POLICY
# ============================================================

ui_operator_interpretation_policy:
- users should be able to tell which values are ERP-derived
- users should be able to tell which values are application-derived
- users should not be misled into thinking a proposal approval already updated ERP
- users should not be misled into thinking a score is formal ERP accounting truth

# ============================================================
# 4. STALENESS POLICY
# ============================================================

staleness_policy:
- fetched_at and source_generated_at context matters
- stale ERP reference context should not appear indistinguishable from fresh reference context where operationally important
- policy may define freshness expectations for review use

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP boundary policy in ProductPortfolioManager
must preserve source clarity,
bounded mutation expectations,
and operator understanding of what is fact versus judgment.
