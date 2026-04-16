#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

cat <<'EOF' > "$BASE/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER OVERVIEW
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

purpose:
ProductPortfolioManager is a BusinessOS application
for evaluating product groups and supporting decisions on
focus, maintain, improve, scale down, or retire.

core_definition:
This application is not a mere product master UI.
This application is not ERP itself.
This application is a decision-support and portfolio-governance application.

main_functions:
- product portfolio visibility
- score calculation support
- strategic classification
- issue note management
- action proposal management
- demand forecast reference
- review meeting support
- approval-oriented decision traceability

platform_principles:
- the same business meaning must be preserved across iphone, android, pc, and tablet
- responsive and adaptive UI is required
- touch-first and keyboard/mouse-first operation must both be considered
- layout density may differ by device class, but authority and business rules must remain consistent

localization_principles:
- all user-facing text must be localization-ready
- fixed single-language assumptions are forbidden
- category, status, and classification labels must support translation resources

currency_principles:
- product portfolio views must support multi-currency business environments
- currency code must be explicit where monetary values are shown or stored
- aggregation rules must distinguish transaction currency and reporting currency where required

system_position:
- independent application under 07.applications
- BusinessOS-side decision support
- ERP-referenced for authoritative transactional values
- forecast-capable through reference integration
- audit-oriented for management review

authority_boundary:
ERP owns:
- product master authority
- formal sales figures
- formal inventory figures
- formal cost and accounting figures

ProductPortfolioManager owns:
- strategic classification
- portfolio scoring views
- action proposals
- review comments
- prioritization
- decision history
EOF

cat <<'EOF' > "$BASE/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

constitutional_role:
ProductPortfolioManager exists to support strategic control
of product groups through explainable, reviewable,
and traceable portfolio decisions.

mandatory_global_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

constitutional_principles:
- portfolio decisions must be explainable
- ERP authority must not be overridden locally
- strategic classification must be reviewable
- proposals and decisions must remain separable
- forecast values are advisory, not absolute truth
- management actions must remain auditable
- localization readiness is mandatory from the first design stage
- currency semantics must remain explicit and consistent
- cross-device parity of business meaning is mandatory
EOF

cat <<'EOF' > "$BASE/010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

mission:
Provide an application layer for product portfolio governance,
supporting business users in prioritizing products
based on profitability, growth, risk, and strategic value.

mandatory_requirements:
1. multilingual support is mandatory
2. multi-currency support is mandatory
3. iphone support is mandatory
4. android support is mandatory
5. pc support is mandatory
6. tablet support is mandatory

scope:
- portfolio visibility
- classification support
- proposal support
- review support
- management traceability

out_of_scope:
- replacing ERP product master
- replacing ERP accounting logic
- replacing ERP inventory control
- uncontrolled direct override of ERP truth

constitutional_rules:
1. ERP remains source of truth for formal operational values.
2. Portfolio classifications are business strategy labels.
3. Product proposals must not be auto-applied without approval.
4. Every meaningful decision must be attributable.
5. Local draft work is allowed but finalization is server-governed.
6. All user-facing text must support localization.
7. Monetary values must carry explicit currency semantics.
8. Device support must preserve equivalent business capability across iphone, android, pc, and tablet.
EOF

cat <<'EOF' > "$BASE/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

architecture_summary:
ProductPortfolioManager is structured around portfolio items,
scores, classifications, proposals, review sessions,
and integration references.

mandatory_cross_cutting_requirements:
- multilingual-ready architecture
- multi-currency-ready architecture
- iphone, android, pc, and tablet support

major_components:
- portfolio dashboard
- item registry view
- score engine facade
- classification module
- proposal module
- review module
- share and approval module
- ERP reference gateway
- forecast reference gateway

cross_cutting_architecture_rules:
- labels, statuses, and UI text must be resource-driven
- monetary models must not assume a single fixed currency
- screen composition must support mobile, tablet, and desktop form factors
- responsive and adaptive layouts are required from the design level
EOF

cat <<'EOF' > "$BASE/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

model_summary:
The application models products as portfolio items
with associated scores, classifications, proposals,
notes, review decisions, and integration references.

cross_cutting_model_rules:
- localization-ready label design is mandatory
- currency code awareness is mandatory for monetary fields
- reporting currency and transaction currency must be distinguishable where needed
EOF

cat <<'EOF' > "$BASE/030.model/0300002_PRODUCT_SCORE_MODEL.md"
# ============================================================
# PRODUCT SCORE MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_score

fields:
- product_score_id
- portfolio_item_id
- score_period_type
- score_period_start
- score_period_end
- transaction_currency_code
- reporting_currency_code
- sales_score
- margin_score
- growth_score
- inventory_score
- strategic_score
- risk_score
- opportunity_score
- total_score
- score_version
- calculated_at

meaning:
Stores explainable scoring outputs for a portfolio item.

currency_rule:
Monetary interpretation must never rely on an implicit single currency assumption.
EOF

cat <<'EOF' > "$BASE/080.policy/0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

policy_domains:
- classification policy
- approval policy
- sharing policy
- forecast usage policy
- retention policy
- localization policy
- currency policy
- device parity policy
EOF

cat <<'EOF' > "$BASE/080.policy/0800003_LOCALIZATION_AND_CURRENCY_POLICY.md"
# ============================================================
# LOCALIZATION AND CURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

localization_policy:
- all user-facing text must be localization-ready
- hardcoded single-language UI is forbidden
- translated labels must preserve business meaning across locales

currency_policy:
- all monetary values must have explicit currency semantics
- display currency and stored currency must be distinguishable where needed
- reporting views may convert values, but conversion basis must be explainable

device_policy:
- iphone, android, pc, and tablet are all official target platforms
- business capability parity is mandatory
- UI layout differences are allowed only when business semantics remain equivalent
EOF

cat <<'EOF' > "$BASE/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

implementation_strategy:
Implement in additive phases.
Keep ERP integration read-oriented first.
Introduce proposal and approval later.

first_class_requirements:
- multilingual support from initial implementation
- multi-currency support from initial implementation
- iphone support
- android support
- pc support
- tablet support

implementation_rules:
- localization resources must be used from the first screen
- currency code handling must be included from the first monetary view
- layouts must be prepared for phone, tablet, and desktop-class rendering
EOF

cat <<'EOF' > "$BASE/120.implementation/1200001_UI_IMPLEMENTATION.md"
# ============================================================
# UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

primary_screens:
- dashboard
- product list
- product detail
- score detail
- proposal list
- review session
- alert list
- settings

ui_cross_platform_requirements:
- iphone and android phone layouts are mandatory
- tablet layouts are mandatory
- pc layouts are mandatory
- adaptive navigation is required by screen size
- touch and pointer interaction must both be supported

ui_localization_requirements:
- all labels and messages must come from translation-ready resources
- truncation and expansion for different languages must be considered

ui_currency_requirements:
- every monetary view must expose currency clearly
- mixed-currency reporting views must show conversion context where applicable
EOF

cat <<'EOF' > "$BASE/130.development/1300001_PHASE_PLAN.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE PLAN
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

phase_1:
- dashboard minimum
- product list
- product detail
- score view
- note support
- multilingual-ready UI foundation
- multi-currency-ready monetary foundation
- iphone/android/tablet/pc responsive shell

phase_2:
- classification workflow
- proposal workflow
- review session support

phase_3:
- approval workflow
- ERP reference hardening
- forecast reference support

phase_4:
- advanced scoring
- automation assist
- export and reporting
EOF

echo "PATCHED: global requirements inserted into ProductPortfolioManager design set"
echo "$BASE"
