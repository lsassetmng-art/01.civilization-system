# ============================================================
# ORDER FLOW ONE PAGE SUMMARY
# ============================================================

status: one-page-summary
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a one-page summary of the current OrderFlow design state.

one_page_summary:
  app_name:
    - OrderFlow

  role:
    - order execution and delivery coordination front

  fixed_scope:
    - order from estimate
    - standalone order
    - inventory confirmation
    - lead time calculation
    - delivery candidate generation
    - customer proposal / response
    - shipment request / shipment visibility
    - delivery confirmation
    - explicit closure
    - downstream billing handoff boundary

  fixed_boundaries:
    - EstimateCreator stays upstream
    - InvoiceFlow stays downstream
    - ERP may be present or absent
    - common component exact design is outside this stream

  current_status:
    - design-complete candidate
    - review-held for execution

  best_start_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

