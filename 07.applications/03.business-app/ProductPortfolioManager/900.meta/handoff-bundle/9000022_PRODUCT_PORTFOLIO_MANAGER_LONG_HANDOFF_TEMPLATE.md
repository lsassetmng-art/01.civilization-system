# ============================================================
# PRODUCT PORTFOLIO MANAGER LONG HANDOFF TEMPLATE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

template:
ProductPortfolioManager is a lightweight product strategy judgment application
under 07.applications.
It sits on top of ERP facts,
uses forecast as advisory reference,
and owns application-side artifacts such as
metric snapshots for judgment reproducibility,
scores, classifications, proposals, reviews, approvals, alerts, share scope, and audit/history.

The following are already fixed:
- multilingual / multi-currency / iphone / android / pc / tablet requirements
- functional requirements
- screen requirements
- exact flow payloads
- exact tables / enums
- KPI/scoring design
- classification/lifecycle design
- proposal/review/approval design
- ERP / forecast boundaries
- authorization / share / alert / audit / freshness / recipient-matrix design

Implementation has not started.
Recommended restart order:
1. OVERVIEW
2. INDEX
3. INTEGRATED
4. BUSINESS FLOW FORMAL DESIGN
5. EXACT TABLES AND ENUMS
6. API CONTRACT EXACT
7. AUTHORIZATION FORMAL DESIGN
8. ERP / FORECAST INTEGRATION FORMAL DESIGN
9. DESIGN CLOSURE NOTE

Warnings:
- do not collapse ERP fact and application judgment
- do not collapse forecast advisory meaning and final decision
- do not collapse review and approval
- do not treat proposal completion as ERP execution truth
