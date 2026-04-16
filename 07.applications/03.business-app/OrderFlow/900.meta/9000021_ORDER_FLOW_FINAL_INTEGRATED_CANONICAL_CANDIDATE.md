# ============================================================
# ORDER FLOW FINAL INTEGRATED CANONICAL CANDIDATE
# ============================================================

status: regenerated-post-review-canonical-candidate
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

# ============================================================
# 0. system definition
# ============================================================

OrderFlow is the order execution and delivery coordination front.

It bridges:
- EstimateCreator as the upstream estimate-side front
and
- InvoiceFlow or equivalent billing-side flow as the downstream handoff target.

OrderFlow is intentionally separated from:
- EstimateCreator as quote-authoring / estimate-side responsibility
- InvoiceFlow as billing-side responsibility
- generic ERP identity as an all-in-one application boundary

# ============================================================
# 1. fixed assumptions
# ============================================================

fixed_assumptions:
  - multilingual ready from day 0
  - multicurrency ready from day 0
  - iPhone supported
  - Android supported
  - PC supported
  - tablet supported

# ============================================================
# 2. core business scope
# ============================================================

core_scope:
  - create order from estimate
  - create standalone order
  - keep customer snapshot
  - manage order lines
  - perform fulfillment-context inventory check
  - calculate lead time
  - calculate delivery candidates
  - create customer proposal
  - record customer response
  - create shipment request
  - track shipment execution visibility
  - record delivery confirmation
  - perform explicit order closure
  - provide downstream billing handoff boundary

# ============================================================
# 3. upstream / downstream boundaries
# ============================================================

upstream_boundary:
  EstimateCreator:
    owns:
      - estimate
      - rough estimate
      - sales memo
      - quote sharing
      - quote-context inventory reference

orderflow_boundary:
  owns:
    - order creation from estimate
    - standalone order creation
    - execution-side inventory confirmation
    - delivery coordination
    - proposal / agreement visibility
    - shipment request and tracking
    - delivery confirmation
    - closure

downstream_boundary:
  InvoiceFlow_or_equivalent:
    receives:
      - billing-ready candidate handoff
    owns:
      - invoice identity
      - billing-side lifecycle
      - billing-side acceptance rules

# ============================================================
# 4. identity rules
# ============================================================

identity_rules:
  - estimate_id and order_id are separate
  - order_id and invoice_id are separate
  - same-record promotion is forbidden
  - copy / handoff only
  - source traceability must remain visible

# ============================================================
# 5. lifecycle
# ============================================================

order_lifecycle:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed

terminal_or_exception_states:
  - canceled

partial_policy:
  - partial shipment allowed
  - partial delivery allowed
  - remaining scope must stay visible
  - close must be explicit

# ============================================================
# 6. ERP stance
# ============================================================

erp_present_mode:
  - OrderFlow remains execution front
  - ERP may serve as truth/source for selected areas
  - sync visibility remains explicit

erp_absent_mode:
  - OrderFlow remains usable without ERP
  - app-local / manual / external-reference operation is allowed
  - business responsibility does not change

principle:
  - responsibility stays fixed
  - connection target changes

# ============================================================
# 7. exact design layers already fixed
# ============================================================

exact_layers_fixed:
  - positioning and differentiation
  - boundary design
  - state and lifecycle
  - core model design
  - screen responsibility design
  - home/dashboard design
  - API request/response exact
  - operator action matrix
  - validation rules
  - permission and authorization
  - screen payload mapping
  - list query / filter / sort
  - notification / reminder / overdue visibility
  - table candidates
  - relationship / FK candidates
  - DDL draft candidates
  - SQL review packet
  - RLS candidates
  - migration packaging
  - seed strategy
  - downstream invoice handoff boundary
  - InvoiceFlow receiver-side candidate contract on OrderFlow side

# ============================================================
# 8. review and execution posture
# ============================================================

review_posture:
  - Sato review passed
  - no blocking structural issue found
  - no mandatory structural redesign required before execution planning

execution_posture:
  - SQL is treated as final execution candidate source
  - actual execution remains a separate go decision
  - additive only posture is preserved

go_gate_requires:
  - Boss go decision
  - target schema confirmation
  - migration placement confirmation
  - final RLS claim mapping confirmation

# ============================================================
# 9. seed posture
# ============================================================

seed_posture:
  - local/dev/test oriented
  - JPY and USD examples included
  - estimate-origin and standalone examples included
  - partial shipment and partial delivery cases included
  - notification and sync-failed examples included

seed_status:
  - good enough for local/dev/test candidate use
  - only minor future adjustment may be needed if schema naming changes later

# ============================================================
# 10. downstream billing boundary
# ============================================================

downstream_billing_boundary:
  endpoint_candidate:
    - create_invoice_from_order_handoff

  required_sender_meaning:
    - company_id
    - order identity
    - closure context
    - customer billing summary
    - money summary
    - delivered scope summary

  fixed_rules:
    - OrderFlow remains execution authority only
    - InvoiceFlow becomes billing-side authority
    - duplicate invoice prevention is receiver-side policy
    - receiver may reject non-billing-ready payloads

# ============================================================
# 11. intentionally separated or deferred
# ============================================================

intentionally_separated:
  - exact common component design

intentionally_deferred:
  - final live execution approval
  - final InvoiceFlow-side canonical implementation
  - final environment-specific RLS claim function naming if platform requires changes

# ============================================================
# 12. current assessment
# ============================================================

current_assessment:
  - OrderFlow is design-finalized after review
  - OrderFlow is execution-candidate ready
  - final execution is still an operational go decision
  - restart and navigation readiness are very high

official_one_line_status:
  - OrderFlow is design-finalized after review, with execution handled as a separate go decision

