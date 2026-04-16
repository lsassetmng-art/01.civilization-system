# ============================================================
# NAME CARD MANAGER CONSTITUTION
# ============================================================

status: draft
layer: constitution
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the foundational principles of NameCardManager.

# ============================================================
# 1. MISSION
# ============================================================

NameCardManager is a business card management application
for storing, organizing, relating, and selectively sharing
name card information inside the civilization system.

# ============================================================
# 2. CORE PRINCIPLES
# ============================================================

1. BusinessOS is the source of truth.
2. Local storage exists for usability and offline operation.
3. Online state must synchronize with BusinessOS.
4. Offline local changes must be queued and applied later.
5. Sharing must always be explicit.
6. App-internal sharing can be revoked.
7. ERP-wide sharing cannot be revoked by normal users.
8. ERP-wide sharing is a controlled publication path.
9. Sensitive card-related information must be protected.
10. Relationship visibility must be supported where relevant.

# ============================================================
# 3. STORAGE PRINCIPLES
# ============================================================

- Local storage is not permanent truth.
- BusinessOS is the persistent truth holder.
- Online state performs:
  - local to BusinessOS save
  - BusinessOS to local sync
  - local action to BusinessOS apply
- Offline actions are stored locally and replayed later.

# ============================================================
# 4. SHARING PRINCIPLES
# ============================================================

Two sharing paths exist:

1. App-internal sharing
   - explicit only
   - limited to configured shared users
   - revocable

2. ERP-wide sharing
   - explicit only
   - approval-governed publication path
   - not revocable by ordinary user action

# ============================================================
# 5. INFORMATION PRINCIPLES
# ============================================================

NameCardManager may manage:

- basic business card information
- person tendency and personality notes
- authority and responsibility scope
- order and business history
- visible relationships among cards and related records

# ============================================================
# 6. SECURITY PRINCIPLES
# ============================================================

- Authentication is required.
- Password-based login is supported.
- Biometric login may be supported.
- BusinessOS-side stored data must be protected.
- Sensitive fields must not be exposed without authorization.

