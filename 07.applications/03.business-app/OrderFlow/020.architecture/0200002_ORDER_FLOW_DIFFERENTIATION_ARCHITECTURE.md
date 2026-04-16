# ============================================================
# ORDER FLOW DIFFERENTIATION ARCHITECTURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Fixes the structural reasons why OrderFlow is different
from adjacent order, inventory, and shipment tools.

# ============================================================
# 1. structural differentiators
# ============================================================

OrderFlow differentiates through:

1. estimate-origin order execution
2. delivery coordination as a first-class domain
3. customer proposal and agreement history
4. ERP-present / ERP-absent dual-mode operation
5. manual-first realistic adoption path
6. multilingual / multicurrency / multi-device readiness from day 0

# ============================================================
# 2. estimate-origin execution
# ============================================================

OrderFlow starts from:
- estimate handoff
- source_estimate_link
- estimate_snapshot retention

rules:
- estimate_id and order_id stay separate
- same-record promotion is forbidden
- order-side traceability is mandatory

# ============================================================
# 3. delivery coordination as a first-class domain
# ============================================================

OrderFlow treats the following as primary business objects:
- inventory check result
- lead time result
- delivery schedule candidate
- customer proposal record
- customer response record
- shipment request state
- delivery confirmation state

This makes OrderFlow stronger in coordination,
not only in transaction recording.

# ============================================================
# 4. customer agreement visibility
# ============================================================

OrderFlow must preserve:
- what date was proposed
- when it was proposed
- who proposed it
- what the customer answered
- whether revision was required
- what was finally accepted internally

# ============================================================
# 5. adoption differentiation
# ============================================================

OrderFlow can begin with:
- manual customer OK recording
- manual shipment state updates
- manual delivery confirmation input

This reduces deployment friction
while keeping architectural seriousness.

# ============================================================
# 6. strategic non-goals
# ============================================================

OrderFlow should not try to become:
- full accounting replacement
- full CRM replacement
- full warehouse replacement
- full procurement suite
- auto-negotiation AI platform in phase 1

# ============================================================
# 7. final conclusion
# ============================================================

OrderFlow wins by being:
- more execution-aware than generic order systems
- more delivery-coordination-aware than shipment-first tools
- more estimate-handoff-aware than fulfillment systems
- more realistic than ERP-heavy-only solutions

