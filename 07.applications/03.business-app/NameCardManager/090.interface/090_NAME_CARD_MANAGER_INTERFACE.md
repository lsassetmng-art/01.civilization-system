# ============================================================
# NAME CARD MANAGER INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the primary user interface structure.

# ============================================================
# 1. LOGIN SCREEN
# ============================================================

Functions:
- id input
- password input
- fingerprint authentication
- face authentication

# ============================================================
# 2. NAME CARD LIST SCREEN
# ============================================================

Visible elements:
- basic name card list
- settings button
- share button
- ERP-wide share button
- app share state
- ERP publication state
- relationship indicator

Primary navigation:
- tap basic info -> detail screen
- tap settings -> settings screen
- tap share -> app-internal share
- tap ERP-wide share -> ERP publication flow

# ============================================================
# 3. NAME CARD DETAIL SCREEN
# ============================================================

Visible sections:
- basic information
- person information
- responsibility scope
- order history
- related entries
- memo
- app share state
- ERP publication state

Available actions:
- add detail
- update detail
- delete detail
- revoke app-internal share

# ============================================================
# 4. SETTINGS SCREEN
# ============================================================

Visible sections:
- share target setting
- ERP setting
- sync status
- pending sync count

# ============================================================
# 5. SHARE TARGET SETTING SCREEN
# ============================================================

Functions:
- add share target
- remove share target
- enable target
- disable target

# ============================================================
# 6. ERP SETTING SCREEN
# ============================================================

Functions:
- ERP use enable/disable
- publication eligibility display
- publication rule display

