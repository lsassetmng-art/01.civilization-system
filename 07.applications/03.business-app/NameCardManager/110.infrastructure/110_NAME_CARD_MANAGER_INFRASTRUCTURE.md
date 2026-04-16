# ============================================================
# NAME CARD MANAGER INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions and platform-level dependencies
for NameCardManager.

# ============================================================
# 1. INFRASTRUCTURE ASSUMPTIONS
# ============================================================

NameCardManager assumes the following infrastructure classes:

- local device runtime
- local protected storage
- BusinessOS persistence and API boundary
- network connectivity boundary
- ERP publication boundary
- authentication/session boundary

# ============================================================
# 2. LOCAL DEVICE INFRASTRUCTURE
# ============================================================

Local device responsibilities:
- store cached records
- store pending offline operations
- store card images temporarily or persistently
- provide biometric capability where available

# ============================================================
# 3. BUSINESSOS INFRASTRUCTURE
# ============================================================

BusinessOS responsibilities:
- canonical persistence
- synchronization source
- share state persistence
- relationship persistence
- ERP publication request staging

# ============================================================
# 4. NETWORK INFRASTRUCTURE
# ============================================================

Required network behaviors:
- online/offline detection
- retry-safe transmission for sync apply
- retry-safe publication request handling
- failure visibility preservation

# ============================================================
# 5. ERP INFRASTRUCTURE
# ============================================================

ERP-side infrastructure is assumed to support:
- company-scoped publication reception
- approval-governed publication path
- publication state return
- publication failure reporting

