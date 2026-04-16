# ============================================================
# NAME CARD MANAGER POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules governing storage, synchronization,
sharing, and publication behavior.

# ============================================================
# 1. SOURCE OF TRUTH POLICY
# ============================================================

- BusinessOS is the source of truth.
- Local storage is not canonical truth.
- Local state must converge to BusinessOS state.

# ============================================================
# 2. OFFLINE POLICY
# ============================================================

- Offline local operation is allowed.
- Offline changes must be queued.
- Queued changes must be replayed when online resumes.
- If replay fails, the system must preserve failure visibility.

# ============================================================
# 3. SHARE POLICY
# ============================================================

App-internal sharing:
- explicit only
- limited to configured shared users
- revocable

ERP-wide sharing:
- explicit only
- ERP setting required
- approval policy required where applicable
- not revocable by ordinary user action

# ============================================================
# 4. DATA SENSITIVITY POLICY
# ============================================================

The following are sensitive and must be protected:
- personality note
- tendency note
- communication note
- authority and decision scope note
- order history and business history note
- relationship note

# ============================================================
# 5. PUBLICATION POLICY
# ============================================================

- ERP-wide publication is treated as controlled publication.
- Publication may require approval.
- Publication state change must be auditable.
- Publication must not be silently reversed by standard user action.

# ============================================================
# 6. VISIBILITY POLICY
# ============================================================

- Private data is owner-scoped by default.
- App-internal shared data is restricted to configured targets.
- ERP-wide shared data follows ERP-side visibility rules.

