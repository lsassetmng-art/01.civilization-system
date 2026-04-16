# ============================================================
# ORDER FLOW POSITIONING ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the official positioning of OrderFlow
as an application-level business execution front.

# ============================================================
# 1. official positioning
# ============================================================

OrderFlow is the order execution and delivery coordination front
that handles the business span between:
- estimate handoff
and
- shipment / delivery completion

It is not:
- a quote authoring app
- a generic ERP clone
- a shipment-only tool
- an inventory-only tool

# ============================================================
# 2. primary business responsibility
# ============================================================

OrderFlow is responsible for:
- order creation from estimate
- standalone order creation
- order line management
- fulfillment-context inventory confirmation
- lead time calculation
- delivery candidate calculation
- customer proposal
- customer agreement recording
- shipment request
- shipment state tracking
- delivery confirmation

# ============================================================
# 3. ecosystem position
# ============================================================

upstream:
- EstimateCreator
- sales activity / quote preparation context

midstream:
- OrderFlow

downstream:
- shipment execution
- delivery completion
- future invoice / receivable handoff if needed

# ============================================================
# 4. operating modes
# ============================================================

OrderFlow must support both:
- ERP-present mode
- ERP-absent mode

principle:
business responsibility remains the same.
only the connected source of truth or execution target changes.

# ============================================================
# 5. device and deployment stance
# ============================================================

OrderFlow is designed from day 0 for:
- iPhone
- Android
- PC
- tablet

It is also designed from day 0 for:
- multilingual UI
- multicurrency business handling

# ============================================================
# 6. one-line definition
# ============================================================

OrderFlow is the business front that turns order intent
into coordinated delivery execution.

