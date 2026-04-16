# ============================================================
# NAME CARD MANAGER IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation-oriented guidance for NameCardManager.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended implementation areas:
- local persistence module
- sync coordinator module
- BusinessOS API client
- ERP publication client
- relationship rendering module
- authentication/session module

# ============================================================
# 2. LOCAL DATA HANDLING
# ============================================================

Recommended local responsibilities:
- cache canonical records
- store pending operations
- store temporary images
- keep offline-editable detail data

# ============================================================
# 3. SYNC IMPLEMENTATION
# ============================================================

Recommended behavior:
- detect connectivity
- push local pending operations
- pull latest canonical state
- reconcile and refresh local state
- preserve conflict visibility

# ============================================================
# 4. SHARE IMPLEMENTATION
# ============================================================

App-internal share:
- apply selected card share to configured targets
- support revoke for app-internal share only

ERP-wide share:
- require ERP usage setting
- require publication eligibility check
- require approval rule check where needed

# ============================================================
# 5. UI IMPLEMENTATION
# ============================================================

Minimum screens:
- login screen
- name card list screen
- name card detail screen
- settings screen
- share target setting screen
- ERP setting screen

# ============================================================
# 6. NON-FUNCTIONAL NOTES
# ============================================================

- Prefer logical delete over immediate destructive removal.
- Preserve sync failure visibility.
- Preserve publication failure visibility.
- Relationship rendering should stay readable and simple.

