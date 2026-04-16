# ============================================================
# ORDER FLOW APP PORTFOLIO ENTRY NOTE
# ============================================================

status: app-portfolio-entry-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact portfolio-style entry for application listings.

portfolio_entry:
  name:
    - OrderFlow
  category:
    - business application
  subcategory:
    - order execution / delivery coordination
  upstream_relation:
    - EstimateCreator
  downstream_relation:
    - InvoiceFlow or ERP billing flow
  maturity:
    - design-complete candidate
  next_step:
    - review reflection or execution planning after approval

