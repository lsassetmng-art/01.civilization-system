# ============================================================
# PRODUCT PORTFOLIO MANAGER OVERVIEW
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
ProductPortfolioManager is a lightweight product strategy judgment application.
It helps organizations evaluate products,
classify strategic importance,
prepare actions,
conduct reviews,
handle approvals,
and preserve decision history.

core_definition:
This application is not a mere product master UI.
This application is not ERP itself.
This application is not a heavy merchandise planning platform.
This application is a product portfolio decision front.

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

positioning_against_market:
- lighter than heavy merchandise planning platforms
- deeper in strategy judgment than PIM/PXM-centric tools
- review- and approval-friendly for practical business use
- suited for subscription-style application delivery

core_capabilities:
- product portfolio visibility
- KPI and score-based evaluation
- strategic classification
- product action proposals
- review session management
- approval-oriented decision handling
- alert and notification handling
- audit and history visibility
- ERP reference usage
- forecast reference usage
- multilingual / multi-currency display control
- saved view presets and operator-facing settings

source_of_truth_boundary:
ERP owns:
- product master identity
- formal sales truth
- formal cost truth
- formal inventory truth
- formal accounting truth

ProductPortfolioManager owns:
- portfolio scope
- metric snapshots for judgment reproducibility
- scoring
- classification
- proposals
- reviews
- approvals
- alerts
- audit/history
- share scope
- operator presentation preferences

current_design_focus:
- architecture-first
- additive-only
- no implementation yet
- explicit business meaning and governance separation
