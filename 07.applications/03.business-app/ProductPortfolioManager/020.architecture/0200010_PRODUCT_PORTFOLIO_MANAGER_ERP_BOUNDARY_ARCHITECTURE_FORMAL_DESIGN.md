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
