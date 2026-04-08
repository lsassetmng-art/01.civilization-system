# ============================================================
# NAMECARDMANAGER PRE-IMPLEMENTATION DECISION SHEET
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes the pre-implementation decisions for NameCardManager.

# ============================================================
# 1. POSITIONING
# ============================================================

- PersonaOS is the core.
- Civilization is the living environment of Persona.
- BusinessOS is a business domain inside Civilization.
- BusinessOS is not a mere fully subordinate object of Civilization.
- NameCardManager is a business application in the BusinessOS domain.

# ============================================================
# 2. SOURCE OF TRUTH
# ============================================================

- BusinessOS is the source of truth.
- Local storage is not canonical truth.
- Local storage is an offline work area and cache.

# ============================================================
# 3. SYNCHRONIZATION
# ============================================================

- Synchronization adopts operation-queue style.
- Offline changes are stored as pending operations.
- Re-online state applies queued operations to BusinessOS.
- Conflict is first handled mainly at record level.
- Conflict must not be silently overwritten.

# ============================================================
# 4. ERP PUBLICATION
# ============================================================

- NameCardManager does not directly transmit to ERP.
- NameCardManager issues publication requests.
- Shared BusinessOS capability handles:
  - eligibility check
  - company context attachment
  - approval routing
  - payload transformation
  - ERP execution
  - result capture
  - audit capture

# ============================================================
# 5. ERP STATE
# ============================================================

Canonical publication progression:
- not_published
- pending_approval
- approved_not_published
- published
- publish_failed

Additional approval-side outcomes:
- rejected
- returned_for_fix

# ============================================================
# 6. IMAGE POLICY
# ============================================================

- Front/back two-sided handling
- DB stores metadata/path references
- Binary is handled through protected storage
- OCR is not required in initial implementation

# ============================================================
# 7. RELATIONSHIP POLICY
# ============================================================

Relationship priority:
- manual
- same_company
- order_history

Automatic inference should be conservative.

# ============================================================
# 8. UI POLICY
# ============================================================

Recommended list density:
- full name
- company name
- department/title
- sync badge
- share badge
- ERP badge
- relation icon

Detail editing is section-based:
- basic information
- person information
- responsibility scope
- history
- relationship

# ============================================================
# 9. DELETE POLICY
# ============================================================

- Delete is logical delete.
- Deleted records remain auditable.
- ERP-published history remains preserved.
- Ordinary users do not roll back published ERP-wide state.

# ============================================================
# 10. CURRENT PHASE
# ============================================================

Current phase is still design finalization.

- DB physical schema is not yet executed
- Java implementation is not yet started
- design is being fixed before implementation

