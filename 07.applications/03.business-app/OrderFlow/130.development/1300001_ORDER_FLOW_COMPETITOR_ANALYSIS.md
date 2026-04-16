# ============================================================
# ORDER FLOW COMPETITOR ANALYSIS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
This document compares major adjacent competitors to clarify
where OrderFlow should compete, where it should not,
and what must be differentiated early.

# ============================================================
# 1. comparison target selection
# ============================================================

selected competitors:
- Zoho Inventory
- Katana
- ShipStation
- NetSuite
- Extensiv
- Brightpearl

selection reason:
These products are close to OrderFlow in one or more of:
- order management
- inventory visibility
- shipping / fulfillment
- multichannel coordination
- scheduling / execution adjacency

# ============================================================
# 2. summary conclusion
# ============================================================

OrderFlow should not try to win as a generic all-in-one ERP clone.

OrderFlow should win as:
- estimate-to-order handoff front
- delivery coordination front
- customer proposal / agreement front
- ERP-present / ERP-absent dual-mode business app
- lightweight but structurally serious execution app

# ============================================================
# 3. competitor comparison
# ============================================================

## 3-1. Zoho Inventory

strong points:
- broad order + inventory + shipment flow coverage
- multichannel friendly
- packaging / tracking / shipment update strengths
- relatively easy to understand for SMB operations

weaknesses relative to OrderFlow:
- weaker identity around estimate-to-order business handoff
- delivery date negotiation / customer agreement is not the center
- less specialized as a fulfillment coordination front

what OrderFlow should learn:
- clean order-to-shipment continuity
- practical SMB usability
- shipment visibility language

## 3-2. Katana

strong points:
- real-time inventory visibility
- committed / arriving / available style thinking
- strong planning and operational clarity
- good for product businesses with stock / production complexity

weaknesses relative to OrderFlow:
- stronger on inventory / planning than customer-facing delivery adjustment
- estimate-origin business transition is not the core story
- more supply-side centric than agreement-side centric

what OrderFlow should learn:
- inventory truth clarity
- supply status readability
- committed stock semantics

## 3-3. ShipStation

strong points:
- shipping-focused operational excellence
- label / carrier / rate / automation strengths
- fast path from order to shipment execution

weaknesses relative to OrderFlow:
- downstream shipment strength is high,
  but pre-shipment delivery promise coordination is not the center
- estimate handoff is outside core identity
- customer agreement before shipment is not the main front

what OrderFlow should learn:
- shipping action efficiency
- warehouse-facing simplicity
- shipment status usability

## 3-4. NetSuite

strong points:
- strong real-time inventory visibility
- broad enterprise coverage
- cross-channel stock visibility
- strong enterprise integration story

weaknesses relative to OrderFlow:
- heavy platform character
- too large for lightweight front replacement
- harder to position as a focused execution front for smaller teams

what OrderFlow should learn:
- authoritative inventory reference model
- strong system-of-record linkage
- enterprise-ready integration posture

## 3-5. Extensiv

strong points:
- strong order / channel / fulfillment visibility
- omnichannel / fulfillment flow orchestration
- strong operational control framing

weaknesses relative to OrderFlow:
- ecommerce / fulfillment channel emphasis is strong
- estimate-origin business process is not the center
- customer proposal / negotiation before shipment is not the core identity

what OrderFlow should learn:
- visibility language
- multi-channel control viewpoint
- order-flow standardization thinking

## 3-6. Brightpearl

strong points:
- retail operations orientation
- inventory and buying recommendation strength
- planning / reorder / retail operations visibility

weaknesses relative to OrderFlow:
- stronger as retail operating backbone than as delivery coordination front
- estimate handoff story is weak
- proposal / agreement / internal business adjustment is not the primary center

what OrderFlow should learn:
- operational dashboarding
- planning visibility
- action-oriented retail summaries

# ============================================================
# 4. comparison table
# ============================================================

| product | order | inventory | shipment | customer delivery coordination | estimate handoff | ERP/no-ERP duality |
| --- | --- | --- | --- | --- | --- | --- |
| Zoho Inventory | strong | strong | strong | medium | weak | medium |
| Katana | medium | very strong | medium | weak | weak | medium |
| ShipStation | medium | medium | very strong | weak | weak | weak |
| NetSuite | strong | very strong | strong | medium | weak | strong |
| Extensiv | strong | strong | strong | weak | weak | medium |
| Brightpearl | strong | strong | medium | weak | weak | medium |
| OrderFlow target | strong | strong enough | strong enough | very strong | very strong | very strong |

# ============================================================
# 5. implications for OrderFlow
# ============================================================

OrderFlow must emphasize:
- estimate-to-order copy / handoff
- delivery promise calculation
- customer proposal history
- customer agreement recording
- partial shipment + partial delivery handling
- ERP-present / ERP-absent compatible architecture
- multilingual / multicurrency / multi-device from day 0

OrderFlow must avoid:
- becoming vague generic ERP
- becoming shipment-only tooling
- becoming inventory-only tooling
- becoming quote-authoring app

# ============================================================
# 6. final design meaning
# ============================================================

Competitors are strongest in:
- generic OMS
- inventory visibility
- shipping execution
- omnichannel operations

OrderFlow should be strongest in:
- post-estimate order execution handoff
- delivery coordination
- customer-facing date proposal tracking
- execution front positioning
- structural compatibility with and without ERP

