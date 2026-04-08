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
