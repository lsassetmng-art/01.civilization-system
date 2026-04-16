# ============================================================
# ORDER FLOW BOUNDARY ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundaries between OrderFlow
and adjacent systems or domains.

# ============================================================
# 1. boundary with EstimateCreator
# ============================================================

EstimateCreator owns:
- estimate creation
- rough estimate
- sales memo
- quote sharing
- quote-context inventory reference

OrderFlow owns:
- order creation from estimate
- standalone order creation
- fulfillment-context inventory confirmation
- delivery coordination
- customer proposal and agreement
- shipment request and tracking
- delivery confirmation

handoff rules:
- copy / handoff only
- same-record promotion forbidden
- source_estimate_link required
- estimate_snapshot required on order side

# ============================================================
# 2. boundary with ERP
# ============================================================

with ERP:
- order may sync to ERP
- inventory may reference ERP truth
- shipment request may connect to ERP-linked execution
- delivery confirmation may sync downstream

without ERP:
- order may be app-canonical
- inventory may be lightweight or reference-based
- shipment request may be lightweight-managed
- delivery confirmation may remain app-canonical

fixed principle:
responsibility is stable.
connection target is variable.

# ============================================================
# 3. boundary with shipment execution
# ============================================================

OrderFlow owns:
- shipment request creation
- shipment request line structure
- shipment state tracking
- shipment execution visibility

OrderFlow does not need to own:
- full warehouse control
- full carrier platform replacement
- full logistics backbone replacement

# ============================================================
# 4. boundary with invoicing
# ============================================================

OrderFlow may later hand off to:
- InvoiceFlow
- ERP billing flow
- downstream receivable management

initial principle:
OrderFlow ends at delivery confirmation and closure readiness.

# ============================================================
# 5. boundary with common components
# ============================================================

OrderFlow should consume shared components for:
- deeplink entry
- shared session reuse
- pending operation
- publication request / result
- business status badge
- multilingual resource resolution

OrderFlow-specific meaning remains local where needed.

