# ============================================================
# ORDER FLOW FIXED SCOPE DECLARATION
# ============================================================

status: fixed-scope-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the current fixed design scope of OrderFlow.

fixed_scope:
  included:
    - order creation from estimate
    - standalone order creation
    - customer snapshot retention
    - fulfillment-context inventory confirmation
    - lead time calculation
    - delivery schedule candidate generation
    - customer proposal and response recording
    - shipment request and shipment visibility
    - delivery confirmation
    - explicit order closure
    - downstream billing handoff boundary

  excluded:
    - estimate authoring itself
    - invoice lifecycle itself
    - exact shared/common component design
    - final executable migration approval

declaration:
  - the above scope is treated as fixed for the current design bundle unless explicit review requires change

