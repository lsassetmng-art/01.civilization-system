# ============================================================
# NAME CARD MANAGER RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for local operation, synchronization,
sharing, and ERP publication.

# ============================================================
# 1. LOGIN RUNTIME
# ============================================================

Supported authentication:
- id and password
- biometric unlock support such as fingerprint or face

# ============================================================
# 2. ONLINE RUNTIME
# ============================================================

When online:
- local records are saved to BusinessOS
- BusinessOS state is synchronized to local
- local operations are applied to BusinessOS
- pending offline operations are replayed

# ============================================================
# 3. OFFLINE RUNTIME
# ============================================================

When offline:
- local view and local edit remain available
- operations are queued locally
- app-internal share execution is not completed remotely
- ERP-wide publication is not executed

# ============================================================
# 4. SHARE RUNTIME
# ============================================================

App-internal share:
- explicit user action required
- limited to configured share targets
- can be revoked

ERP-wide share:
- explicit user action required
- governed by ERP usage setting
- governed by approval policy
- cannot be revoked by ordinary user action

# ============================================================
# 5. DELETE RUNTIME
# ============================================================

Delete operations:
- may first be represented as logical deletion
- must synchronize to BusinessOS when online
- offline delete is queued for later apply

# ============================================================
# 6. RELATIONSHIP RUNTIME
# ============================================================

The application should surface visible related records where known.

Relationship signals may derive from:
- same company
- prior order history
- explicit relationship registration
- business context knowledge

