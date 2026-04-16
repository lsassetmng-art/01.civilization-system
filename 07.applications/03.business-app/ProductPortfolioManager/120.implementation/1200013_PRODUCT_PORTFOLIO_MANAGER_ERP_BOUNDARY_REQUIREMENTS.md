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
