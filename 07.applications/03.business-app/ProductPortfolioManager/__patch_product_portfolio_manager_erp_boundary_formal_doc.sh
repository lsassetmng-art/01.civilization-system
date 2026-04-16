#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/060.integration" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/010.constitution/0100005_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_CONSTITUTION.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE FORMAL DESIGN
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary and data-flow meaning
between ProductPortfolioManager and ERP.

architecture_principles:
- ERP facts are consumed through a reference boundary
- ProductPortfolioManager builds judgment artifacts on top of referenced facts
- source-of-truth visibility must remain explicit in UI and data flow
- ERP-affecting intentions must remain separated from ERP execution truth
- architecture must support reproducibility via snapshots without redefining source ownership

# ============================================================
# 1. REFERENCE LAYERS
# ============================================================

reference_layers:
- ERP fact reference layer
- application judgment layer
- handoff/request layer for downstream action where relevant

erp_fact_reference_layer:
- product identity
- category and brand context
- lifecycle-related context where ERP exposes it
- sales values
- cost values
- gross profit basis values
- inventory-related values

application_judgment_layer:
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_review_session
- product_review_decision
- product_approval_request
- product_alert
- product_audit_event

handoff_request_layer:
- explicit downstream requests or linked actions where future integration requires them
- not silent ERP mutation

# ============================================================
# 2. ARCHITECTURAL DATA FLOW
# ============================================================

architectural_data_flow:
1. reference ERP fact
2. materialize judgment-time snapshot where needed
3. produce application-owned evaluation artifacts
4. support review and approval
5. optionally prepare explicit downstream handoff
6. preserve history and source context

# ============================================================
# 3. UI/ARCHITECTURE SOURCE VISIBILITY
# ============================================================

source_visibility_requirements:
- ERP-derived facts should be visibly distinguishable from application judgment outputs
- metric snapshot should be identifiable as snapshot/reference context
- score should be identifiable as evaluation artifact
- classification should be identifiable as strategy artifact
- forecast should be identifiable as advisory reference, not ERP truth

# ============================================================
# 4. FORBIDDEN ARCHITECTURAL PATTERNS
# ============================================================

forbidden_patterns:
- silent overwrite of ERP fact through application save
- implicit ERP mutation hidden behind proposal completion
- implicit ERP mutation hidden behind review completion
- mixing classification and ERP master category semantics
- presenting score as if it were formal ERP accounting truth

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP boundary architecture in ProductPortfolioManager
must preserve explicit reference,
explicit judgment ownership,
and explicit downstream handoff separation.
EOF

cat <<'EOF' > "$BASE/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY INTEGRATION FORMAL DESIGN
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal integration meaning of ERP references
used by ProductPortfolioManager.

integration_principles:
- ERP integration is reference-first
- fetched ERP values remain source-attributed
- ProductPortfolioManager stores derived or copied reference context only for judgment support
- downstream ERP-affecting integration must remain explicit and controlled
- integration timestamps matter

# ============================================================
# 1. ERP REFERENCE OBJECTS
# ============================================================

erp_reference_objects:
- product identity
- product code
- product display name basis
- category context
- brand context
- lifecycle-related context where available
- sales aggregates
- cost aggregates
- gross profit basis
- inventory indicators

# ============================================================
# 2. REQUIRED ERP REFERENCE METADATA
# ============================================================

required_reference_metadata:
- source_system_code
- source_generated_at where available
- fetched_at
- company/workspace interpretation context where needed
- transaction currency context where needed

# ============================================================
# 3. SNAPSHOT JUSTIFICATION
# ============================================================

snapshot_justification:
product_metric_snapshot exists so that:
- review interpretation remains reproducible
- score explanation remains attributable
- later history reading can understand the basis used at judgment time

snapshot_rule:
Snapshot storage does not transfer truth ownership away from ERP.

# ============================================================
# 4. FUTURE DOWNSTREAM HANDOFF RULE
# ============================================================

future_downstream_handoff_rule:
If ProductPortfolioManager later emits ERP-affecting requests,
those requests must be:
- explicit
- typed
- reviewable
- policy-bounded
- traceable
- separate from application-owned judgment records

# ============================================================
# 5. INTEGRATION FAILURE RULES
# ============================================================

integration_failure_rules:
- failure to fetch ERP facts must not fabricate values
- stale reference context should be distinguishable where operationally relevant
- partial reference availability should not be mistaken for full authoritative completeness

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP integration in ProductPortfolioManager
must remain reference-oriented,
timestamp-aware,
source-attributed,
and governance-safe.
EOF

cat <<'EOF' > "$BASE/080.policy/0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for ERP boundary handling without entering implementation code.

# ============================================================
# 1. REQUIRED REFERENCE CAPABILITIES
# ============================================================

required_reference_capabilities:
- load ERP-derived product identity context
- load ERP-derived metric context
- preserve source_system_code where applicable
- preserve source_generated_at where available
- preserve fetched_at
- distinguish ERP reference values from application-owned outputs

# ============================================================
# 2. REQUIRED UI CAPABILITIES
# ============================================================

required_ui_capabilities:
- indicate ERP-derived values in detail context where relevant
- indicate snapshot timing
- indicate score as application evaluation output
- indicate classification as portfolio strategy output
- avoid ambiguous source presentation

# ============================================================
# 3. REQUIRED VALIDATION CAPABILITIES
# ============================================================

required_validation_capabilities:
- reject flows that assume implicit ERP mutation through local judgment save
- require explicit typed route for any future ERP-affecting handoff
- validate presence of source context fields where required for reference rows

# ============================================================
# 4. REQUIRED HISTORY/AUDIT CAPABILITIES
# ============================================================

required_history_audit_capabilities:
- preserve source-boundary-relevant audit events where meaningful
- preserve reference timestamps for later explanation
- preserve distinction between fact reference refresh and judgment change events

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready source labels
- multi-currency-safe ERP fact presentation
- cross-device consistent meaning
- no hidden ERP mutation by proposal or review shortcuts
- no implication that application-owned artifacts are ERP truth

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement ERP boundary handling
as explicit reference, explicit attribution, and explicit separation from judgment ownership.
EOF

echo "PATCHED: ERP boundary formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/010.constitution" -maxdepth 1 -type f | sort
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/060.integration" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
