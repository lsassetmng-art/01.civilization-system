# ============================================================
# COMPETITIVE POSITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes the competitive architectural position of InvoiceFlow.

# ============================================================
# 1. POSITION
# ============================================================

position_statement:
InvoiceFlow is positioned as a strong operational front
between pure invoice tools and deep accounting/ERP systems.

design_position:
- not just an invoice PDF tool
- not just a payment reconciliation specialist
- not just a collection-only tool
- not an ERP replacement
- an integrated front for invoice, payment confirmation,
  collection management, receipt issuance, and ERP-aware operation

# ============================================================
# 2. WINNING SHAPE
# ============================================================

winning_shape:
- keep invoice/payment/collection in one app
- respect ERP master authority instead of competing with ERP
- support real-world payment confirmation routes
- make collection work visible and actionable
- reduce split operation across multiple products

# ============================================================
# 3. DELIBERATE NON-GOALS
# ============================================================

deliberate_non_goals:
- becoming a full accounting suite
- becoming a formal ERP invoice master
- becoming a deep settlement-specialist platform only
- pushing collection into a separate application
- designing only for desktop back-office operation

# ============================================================
# 4. CORE DIFFERENTIATORS
# ============================================================

core_differentiators:
- explicit distinction between FRONT_LOCAL and ERP_MASTER
- invoice authority visibility on every critical screen
- integrated collection management inside the same app
- bank-linked and manual confirmation as first-class routes
- receipt issuance from both confirmation routes
- strong multi-device front usability
- multilingual and multicurrency design from root

# ============================================================
# 5. COMPETITIVE ARCHITECTURE RULES
# ============================================================

competitive_rules:
- architecture must favor operational continuity from invoice to collection
- architecture must not hide ERP non-eligibility
- architecture must not treat collection as optional add-on behavior
- architecture must keep receipt issuance close to payment confirmation
- architecture must support lightweight daily operation on phone, tablet, and PC
