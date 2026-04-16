# ============================================================
# NAMECARD DATA PROTECTION POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: data_protection
owner: Boss
prepared_by: Zero

purpose:
Defines protection policy for local and BusinessOS-stored
NameCardManager data.

# ============================================================
# 1. CORE POLICY
# ============================================================

- BusinessOS is the canonical storage boundary.
- Data stored in BusinessOS must be protected.
- Sensitive local data must also be protected.
- Protection requirements apply to both content and derived metadata
  where exposure would reveal protected information.

# ============================================================
# 2. PROTECTED DATA CLASSES
# ============================================================

Protected data includes:
- basic name card identity data where business-sensitive
- front and back card images
- tendency note
- personality note
- communication note
- authority scope note
- decision scope note
- responsibility scope note
- work scope note
- work content note
- influence scope note
- relationship note
- order and business history note
- publication eligibility context where sensitive
- pending operation payload where it contains protected fields

# ============================================================
# 3. STORAGE POLICY
# ============================================================

BusinessOS storage:
- protected at rest
- protected in access scope
- not exposed outside authorized boundaries

Local storage:
- treated as loss-risk and exposure-risk surface
- should minimize unnecessary long-term protected retention
- should use protected device storage where possible

# ============================================================
# 4. ACCESS POLICY
# ============================================================

- private data is owner-scoped by default
- app-internal shared data is restricted to configured targets
- ERP-wide published data follows ERP-side access rules
- protected detail notes must not be exposed without authorization

# ============================================================
# 5. FAILURE POLICY
# ============================================================

- failure to protect required fields must block unsafe exposure
- failure to resolve authorization must fail closed
- failure to confirm publication boundary must fail closed

