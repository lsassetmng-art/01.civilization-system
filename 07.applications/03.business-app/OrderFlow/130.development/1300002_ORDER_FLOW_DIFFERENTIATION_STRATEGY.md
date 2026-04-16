# ============================================================
# ORDER FLOW DIFFERENTIATION STRATEGY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. core differentiation
# ============================================================

OrderFlow should be differentiated as:

Order execution and delivery coordination front
specialized for the business gap between:
- estimate
and
- shipment / delivery execution

It should not be explained merely as:
- inventory tool
- shipping tool
- generic OMS
- ERP mini clone

# ============================================================
# 2. what makes OrderFlow different
# ============================================================

## 2-1. estimate-origin execution

OrderFlow starts from:
- estimate handoff
- source estimate link
- estimate snapshot retention

This is a structural differentiator.

## 2-2. delivery date negotiation as a first-class concept

OrderFlow treats these as core:
- lead time calculation
- delivery candidate calculation
- customer proposal
- customer revision request
- customer acceptance
- internal agreement record

This is stronger than ordinary shipment-centered systems.

## 2-3. ERP-present / ERP-absent duality

OrderFlow can work:
- with ERP integration
- without ERP integration

Responsibility stays the same.
Only the connection target changes.

## 2-4. manual-first realistic operation

OrderFlow can start with:
- internal manual customer OK recording
- internal shipment status update
- internal delivery confirmation input

This lowers adoption friction.

## 2-5. multilingual / multicurrency / multi-device from day 0

OrderFlow should not retrofit:
- localization
- multicurrency
- tablet / PC usage

These should be first-class architectural assumptions.

# ============================================================
# 3. target user value
# ============================================================

OrderFlow should create value for teams that say:

- we already make estimates, but order execution after that is messy
- inventory visibility exists, but delivery promise adjustment is unclear
- customer date confirmation is handled in chat / phone / spreadsheets
- ERP is too heavy alone for this front
- we need a serious but lightweight execution app

# ============================================================
# 4. feature strategy
# ============================================================

## must win
- create order from estimate
- standalone order creation
- source estimate traceability
- inventory check in fulfillment context
- lead time calculation
- delivery schedule candidate generation
- customer proposal history
- customer agreement recording
- shipment request state management
- partial shipment and partial delivery support

## good to have
- template-based customer proposal messages
- reminder / follow-up surfaces
- SLA-style late-risk visibility
- ERP sync status surface
- operator audit trail summary

## intentionally not first
- full warehouse management replacement
- full accounting replacement
- full CRM replacement
- auto-negotiation AI
- deep procurement suite

# ============================================================
# 5. UI differentiation
# ============================================================

OrderFlow UI should feel like:
- execution-oriented
- state-clear
- schedule-aware
- customer-response-aware

not like:
- accounting-centric screens
- pure warehouse terminals
- vague spreadsheet clones

PC / tablet strengths should include:
- list + detail split view
- candidate delivery date comparison
- proposal history visibility
- shipment and delivery state side-by-side review

# ============================================================
# 6. messaging draft
# ============================================================

positioning draft:
OrderFlow is the order execution and delivery coordination front
that bridges estimate handoff, inventory check,
delivery promise calculation, customer proposal,
shipment request, and delivery confirmation.

simple sales message:
From estimate handoff to delivery confirmation,
OrderFlow keeps execution visible and adjustable.

# ============================================================
# 7. final conclusion
# ============================================================

OrderFlow should compete by being:
- closer to actual business execution than generic OMS
- lighter than ERP-heavy execution layers
- stronger in delivery coordination than shipment-first tools
- stronger in estimate handoff than fulfillment tools
- more realistic for mixed ERP / non-ERP environments

