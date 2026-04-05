# ============================================================
# NAME CARD MANAGER ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the logical architecture of NameCardManager.

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

NameCardManager is an application under 07.applications.
It operates as a BusinessOS-connected app with local runtime
capability.

# ============================================================
# 2. PRIMARY COMPONENTS
# ============================================================

1. Local Client Store
   - local cache
   - offline working set
   - pending operation queue

2. Sync Coordinator
   - online/offline detection
   - replay of pending operations
   - pull from BusinessOS
   - push to BusinessOS

3. BusinessOS Persistence Layer
   - canonical record persistence
   - sharing state persistence
   - relationship persistence

4. Share Controller
   - app-internal sharing execution
   - app-internal sharing revoke
   - ERP-wide publication request

5. Relationship Resolver
   - related card discovery
   - related person / account / order visibility

# ============================================================
# 3. SOURCE OF TRUTH
# ============================================================

BusinessOS is the source of truth.

Local data is subordinate and exists to support:
- offline usage
- fast display
- deferred synchronization

# ============================================================
# 4. SYNCHRONIZATION MODEL
# ============================================================

Online:
- local changes are applied to BusinessOS
- BusinessOS state is synchronized back to local
- unresolved conflicts are handled explicitly

Offline:
- local actions are stored in pending queue
- no ERP publication occurs
- queued actions are replayed when connectivity returns

# ============================================================
# 5. SHARING BOUNDARIES
# ============================================================

Boundary A: private
- visible only to owner scope

Boundary B: app-internal shared
- visible only to configured shared users inside BusinessOS

Boundary C: ERP-wide published
- published through ERP path
- visible at company-wide scope according to ERP rules

# ============================================================
# 6. RELATIONSHIP ARCHITECTURE
# ============================================================

NameCardManager must support visible relationship links among:

- cards belonging to same company
- reporting / managerial relations
- order and business history relations
- project or deal relations
- introducer / introduced relations

Relationship display is an application concern.
Canonical relationship storage may be held in BusinessOS.

