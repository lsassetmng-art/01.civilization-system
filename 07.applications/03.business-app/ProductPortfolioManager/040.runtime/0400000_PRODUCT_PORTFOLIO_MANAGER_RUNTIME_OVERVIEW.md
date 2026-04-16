# ============================================================
# PRODUCT PORTFOLIO MANAGER RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_summary:
Runtime is organized around loading reference facts,
materializing judgment views,
preserving draft work,
and finalizing approved outcomes with auditability.

key_runtime_loops:
- snapshot refresh
- score refresh
- classification draft/edit/finalize
- proposal lifecycle
- review session lifecycle
- approval lifecycle
- alert detection and handling
