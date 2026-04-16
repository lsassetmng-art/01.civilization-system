# ============================================================
# NAMECARD SHARED ERP PUBLICATION INTEGRATION
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: shared_erp_publication
owner: Boss
prepared_by: Zero

purpose:
Defines how NameCardManager integrates with shared BusinessOS
ERP publication capability.

# ============================================================
# 1. INTEGRATION GOAL
# ============================================================

NameCardManager requests ERP-wide publication through shared
BusinessOS capability rather than transmitting directly to ERP.

# ============================================================
# 2. REQUEST HANDOFF
# ============================================================

NameCardManager hands off:
- requester identity
- target namecard identity
- company context
- publication policy context
- approval-relevant context

# ============================================================
# 3. SHARED CAPABILITY HANDLING
# ============================================================

Shared capability performs:
- eligibility validation
- approval routing
- payload transformation
- ERP submission
- result return
- audit capture

# ============================================================
# 4. RESULT HANDLING
# ============================================================

NameCardManager receives:
- pending approval state
- approved/published state
- rejected state
- failed state

# ============================================================
# 5. RULE
# ============================================================

Ordinary-user revoke of published ERP-wide sharing is not part
of this integration boundary.

