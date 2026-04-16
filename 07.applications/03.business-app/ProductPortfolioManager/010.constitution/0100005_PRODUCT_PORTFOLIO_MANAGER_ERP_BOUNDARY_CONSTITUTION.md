# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional boundary between
ProductPortfolioManager and ERP.

constitutional_principles:
- ERP remains the formal source of truth for product operational facts
- ProductPortfolioManager remains the source of truth for portfolio judgment artifacts
- reference and mutation responsibilities must remain distinct
- convenience must not erase source ownership
- application judgment must not masquerade as ERP fact
- ERP-related side effects must remain explicit and governed

# ============================================================
# 1. ERP-SIDE AUTHORITY
# ============================================================

erp_side_authority:
- product master identity
- formal product code meaning
- formal sales truth
- formal cost truth
- formal gross profit basis truth
- formal inventory truth
- formal accounting truth
- other ERP-governed operational truth

# ============================================================
# 2. APPLICATION-SIDE AUTHORITY
# ============================================================

application_side_authority:
- product portfolio scope
- metric snapshot copies for judgment reproducibility
- KPI interpretation surfaces
- product scoring
- strategic classification
- proposals
- review sessions
- approval requests and decisions
- alerts
- audit and history surfaces
- share scope

# ============================================================
# 3. CONSTITUTIONAL BOUNDARY RULES
# ============================================================

boundary_rules:
- ERP truth may be referenced here, but not silently re-owned here
- application-side score does not become ERP truth
- application-side classification does not become ERP master category
- proposal approval does not automatically prove ERP execution
- review completion does not automatically mutate ERP state
- any ERP-affecting handoff must be explicit and policy-governed

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must remain a judgment front over ERP facts,
not an ambiguous replacement for ERP authority.
