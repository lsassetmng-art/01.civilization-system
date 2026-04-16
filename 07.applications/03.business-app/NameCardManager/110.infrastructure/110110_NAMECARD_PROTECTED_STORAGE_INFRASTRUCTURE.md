# ============================================================
# NAMECARD PROTECTED STORAGE INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
system: applications
application: NameCardManager
infrastructure_scope: protected_storage
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions for protected storage used by
NameCardManager.

# ============================================================
# 1. LOCAL STORAGE ASSUMPTIONS
# ============================================================

Local infrastructure should support:
- protected application storage
- controlled cache location
- protected image storage path
- protected pending operation storage path

# ============================================================
# 2. BUSINESSOS STORAGE ASSUMPTIONS
# ============================================================

BusinessOS infrastructure should support:
- protected canonical record storage
- protected detail note storage
- protected relationship note storage
- protected order history storage
- protected image reference handling
- authorized retrieval paths only

# ============================================================
# 3. TRANSPORT ASSUMPTIONS
# ============================================================

Transport between local and BusinessOS should support:
- authorized channel usage
- integrity-preserving request/response handling
- safe replay handling for pending operations
- failure visibility when protected transfer fails

# ============================================================
# 4. ERP BOUNDARY ASSUMPTIONS
# ============================================================

ERP-side handling assumes:
- publication goes only through authorized publication path
- data is scoped by ERP-side access rules after publication
- ordinary user local runtime cannot directly undo published ERP state

