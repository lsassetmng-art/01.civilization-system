# ============================================================
# EXPENSE FEATURE PRIORITY
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
This document fixes which functions are included in the initial release
and which are explicitly deferred.

priority_policy:
- initial release = MUST + SHOULD all included
- LATER = deferred to later expansion
- this application is not planned as a minimum-only first release

# ============================================================
# 1. INITIAL RELEASE REQUIRED SCOPE
# ============================================================

initial_release_scope:

  platform_and_global:
    - multilingual UI support
    - multi currency data handling
    - iphone support
    - android support
    - pc support
    - tablet support
    - same business meaning across all supported devices

  employee_core:
    - expense draft creation
    - expense item entry
    - receipt attachment
    - submit
    - withdraw before final approval where policy allows
    - returned item correction
    - resubmit
    - history view

  approval_core:
    - approval request creation
    - approve
    - return with reason
    - reject with reason
    - approval history visibility
    - multi-step approval
    - threshold-based approver branching
    - delegate submission
    - delegate approval with explicit authority rules

  finance_core:
    - finance-side review queue
    - ERP publication request
    - ERP publication result recording
    - ERP failure queue
    - retry visibility
    - monthly close support view
    - evidence defect queue
    - policy-block queue
    - batch retry support
    - export for downstream finance review

  control_core:
    - duplicate / suspicious duplicate check
    - evidence required-by-category handling
    - amount/date/category/payment-method validation
    - approval state and ERP state separation
    - audit-visible major state transitions

  differentiator_core:
    - PocketSecretary-assisted expense candidate intake boundary
    - explicit ERP source-of-truth separation
    - lightweight employee experience with strong control

  expense_scope_expansion:
    - travel expense helper
    - business trip bundle input
    - advance payment settlement
    - corporate card usage recording
    - per-project or per-department allocation
    - tax category expansion

  productivity:
    - frequent expense templates
    - smart field reuse
    - secretary reminder-driven unfinished draft recovery
    - receipt OCR-ready intake boundary
    - receipt unreadable detection support

initial_release_reasoning:
- the market is already strong, so a minimum-only release is too weak
- product differentiation needs operational convenience, not only control
- this release must be small enough to explain but strong enough to win

# ============================================================
# 2. WHAT THIS MEANS
# ============================================================

initial_release_definition:
ExpenseSettlement initial release is a multilingual, multi currency,
all-device expense reimbursement front with strong practical operations,
not a stripped-down MVP.

it_includes_from_day_one:
- draft
- receipt attach
- submit
- approve / return / reject
- multi-step approval
- finance review
- ERP publication request / result
- ERP failure visibility
- duplicate check
- PocketSecretary candidate boundary
- explicit separation of approval and ERP states
- travel and business trip support
- advance settlement
- corporate card usage recording
- frequent templates
- OCR-ready receipt intake boundary
- evidence defect handling
- monthly close support
- project / department allocation expansion support

# ============================================================
# 3. LATER ONLY
# ============================================================

later_features:

  advanced_automation:
    - automatic category suggestion
    - automatic policy recommendation
    - auto-generated anomaly insight
    - advanced assistant-guided correction

  deep_ecosystem:
    - card statement auto-matching
    - transit IC / transport deep integration
    - advanced travel booking linkage
    - external notification ecosystem expansion

  advanced_global:
    - cross-border policy packs
    - complex exchange-rate policy variations
    - per-country tax evidence rules
    - multilingual approval comments translation support

  advanced_operations:
    - heavy analytics dashboards
    - benchmarking views
    - outsourced operations style support layer
    - advanced evidence lifecycle retention automation

later_reasoning:
- valuable for scale and enterprise depth
- not required for first serious release
- must not delay initial practical competitiveness

# ============================================================
# 4. WHAT WE WILL NOT SACRIFICE
# ============================================================

not_to_be_sacrificed:
- multilingual support
- multi currency support
- iphone / android / pc / tablet support
- approval / ERP state separation
- finance failure visibility
- ERP explicit publication boundary
- PocketSecretary linkage potential
- audit-visible critical transitions
- multi-step approval
- advance settlement
- corporate card usage recording
- frequent templates
- OCR-ready receipt intake boundary
- evidence defect handling
- monthly close support visibility

# ============================================================
# 5. PRODUCT SHAPE AFTER THIS DECISION
# ============================================================

product_shape_after_this_decision:
The first release is a serious multilingual, multi currency,
all-device expense front with approval depth, finance usability,
explicit ERP handoff, and PocketSecretary-assisted differentiation.

