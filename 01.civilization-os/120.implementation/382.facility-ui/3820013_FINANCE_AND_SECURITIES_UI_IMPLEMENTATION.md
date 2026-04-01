# ============================================================
# FINANCE AND SECURITIES UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: finance-and-securities-ui-implementation
component: finance-and-securities-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for finance and securities UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- FINANCE_AND_SECURITIES_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Finance and securities UI must implement:

- finance_overview_screen
- finance_manage_screen
- finance_issue_screen
- finance_history_screen
- finance_permission_screen

Optional where supported:

- finance_linked_screen
- finance_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Finance overview must prioritize
account posture and risk posture.

Initial priority:

1. institution identity
2. financial service type
3. balance or account posture
4. risk posture
5. liquidity or settlement warning summary
6. compliance or restriction summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Finance manage must default to:

- summary_tab

Fallback order:

- account_and_product_tab
- settlement_and_flow_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. account_and_product_tab
3. settlement_and_flow_tab
4. portfolio_and_position_tab
5. risk_and_exposure_tab
6. compliance_and_restriction_tab
7. issue_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab

Account, settlement, and risk posture
must become visible early.


# ============================================================
# 6. ACCOUNT AND PRODUCT TAB IMPLEMENTATION
# ============================================================

Account and product tab must expose
service and product posture.

It should load:

- account groups
- active service or product groups
- unsupported area indicators
- concentration indicators
- product imbalance indicators
- correction need

Product changes should refresh:

- account/product section
- overview service summary
- issue indicators when relevant


# ============================================================
# 7. SETTLEMENT AND FLOW TAB IMPLEMENTATION
# ============================================================

Settlement and flow tab is a high-priority surface.

It must expose:

- settlement posture
- transfer or flow posture
- pending indicators
- delay indicators
- blockage indicators
- corrective urgency

Settlement changes should refresh:

- settlement section
- overview liquidity or flow summary
- issue indicators


# ============================================================
# 8. PORTFOLIO AND POSITION TAB IMPLEMENTATION
# ============================================================

Portfolio and position tab must expose
position posture where applicable.

It should load:

- portfolio groups
- position posture
- imbalance indicators
- concentration indicators
- exposure posture
- corrective need

This tab must remain a visibility and controlled-operation surface,
not a hidden mutation surface.


# ============================================================
# 9. RISK AND EXPOSURE TAB IMPLEMENTATION
# ============================================================

Risk and exposure tab must expose
financial risk posture clearly.

It should load:

- exposure posture
- concentration posture
- unstable-position indicators
- liquidity concern
- settlement risk
- escalation need

Critical risk posture must appear
on overview as well.


# ============================================================
# 10. COMPLIANCE AND RESTRICTION TAB IMPLEMENTATION
# ============================================================

Compliance and restriction tab must expose
control posture.

It should load:

- compliance posture
- restriction posture
- blocked action indicators
- review_hold indicators
- unresolved control burden
- correction need

Compliance restrictions must be readable,
not hidden silently.


# ============================================================
# 11. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Finance automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
risk spikes,
settlement blockage,
or compliance concern.


# ============================================================
# 12. ISSUE TAB IMPLEMENTATION
# ============================================================

Finance issue tab must centralize
financial-operation problems.

Typical issue groups include:

- settlement blockage
- liquidity concern
- exposure spike
- concentration concern
- compliance hold
- suspicious-operation concern
- urgent intervention trigger

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 13. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

operations_operator:
- settlement visibility
- limited account visibility
- issue visibility
- limited history visibility

risk_operator:
- risk visibility
- portfolio visibility
- issue visibility
- summary visibility

compliance_operator:
- compliance visibility
- issue visibility
- limited settlement visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 14. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- Marketplace settlement visibility
- company premises
- government and civic service
- identity / anti-fraud related visibility where surfaced
- district or city financial context where supported

Linked routing must preserve
source finance orientation.


# ============================================================
# 15. FINAL RULE
# ============================================================

Finance and securities implementation must remain:

- account-visible
- settlement-visible
- risk-visible
- compliance-visible
- issue-visible
- summary-first
- clearly separable from Marketplace or governance-only truth
