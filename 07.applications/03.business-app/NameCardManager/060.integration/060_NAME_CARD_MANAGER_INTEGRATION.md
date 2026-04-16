# ============================================================
# NAME CARD MANAGER INTEGRATION
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundaries for NameCardManager.

# ============================================================
# 1. BUSINESSOS INTEGRATION
# ============================================================

BusinessOS is the canonical persistence and sharing boundary.

Integration responsibilities:
- canonical persistence
- synchronization source
- app-internal share state persistence
- relationship persistence
- ERP publication request source

# ============================================================
# 2. LOCAL CLIENT INTEGRATION
# ============================================================

Local runtime integrates with:
- local encrypted store
- local pending operation queue
- local authentication/session layer
- local image storage for card images

# ============================================================
# 3. ERP INTEGRATION
# ============================================================

ERP integration is publication-oriented, not general local sync.

ERP integration responsibilities:
- ERP use eligibility check
- company context attachment
- approval-governed publication
- publication result handling

ERP integration principles:
- explicit only
- no automatic ERP publication
- ordinary users cannot revoke published ERP-wide sharing

# ============================================================
# 4. AUTHENTICATION INTEGRATION
# ============================================================

Authentication may integrate with:
- id/password authentication
- device biometric authentication
- session token or application session boundary

# ============================================================
# 5. RELATIONSHIP INTEGRATION
# ============================================================

Relationship visibility may integrate with:
- same company card grouping
- order history records
- project/deal context
- explicit relationship registration

