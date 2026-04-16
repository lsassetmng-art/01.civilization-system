# ============================================================
# QUICK FORECAST INTEGRATION
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundaries of QuickForecast Basic / Pro.

# ============================================================
# 1. INTEGRATION PRINCIPLE
# ============================================================

QuickForecast integrates outward only through governed contracts.

The application must not treat local draft state
as enterprise-authoritative state.

# ============================================================
# 2. BASIC INTEGRATION
# ============================================================

Basic integration scope:
- public/general information usage
- local import/export where allowed
- no ERP data usage
- no governed enterprise submission

# ============================================================
# 3. PRO INTEGRATION
# ============================================================

Pro integration scope:
- ERP-related data reference
- shared operation support
- approval linkage
- synchronization linkage
- governed submission linkage

# ============================================================
# 4. ERP COEXISTENCE
# ============================================================

ERP retains equivalent forecasting capability.

QuickForecast may exchange forecast-originated draft material
with ERP-side governed functions,
but QuickForecast does not nullify ERP authority.

# ============================================================
# 5. INTEGRATION SAFETY
# ============================================================

Integration must fail closed when:
- identity is unresolved
- contract version is unsupported
- required fields are missing
- policy-gated flow is not satisfied
