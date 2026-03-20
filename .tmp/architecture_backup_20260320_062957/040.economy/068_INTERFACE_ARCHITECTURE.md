# ============================================================
# ECONOMY INTERFACE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Economy interface architecture defines how economic information
and actions are exposed to higher interaction layers.

purpose:
- provide structured access to economy functions
- separate domain logic from interface rendering
- prevent direct UI-side mutation of economy state

exposed_surfaces:
- balance_view
- market_view
- company_dashboard
- stock_portfolio
- tax_summary
- treasury_view

rules:
- interface requests do not directly change balances or ownership
- all write intents must route into validated events
- interface is not the source of truth

constitution_alignment:
- no direct mutation from interface
- backend authority preserved

final_rule:
Economy interface may expose state and accept intent,
but it must never perform direct economic mutation.
