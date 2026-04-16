# ============================================================
# NAME CARD LIST SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: namecard_list
owner: Boss
prepared_by: Zero

purpose:
Defines the main list screen of NameCardManager.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The list screen provides overview, selection, and access to
primary actions for managed name cards.

# ============================================================
# 2. MAIN DISPLAY AREAS
# ============================================================

- list header
- search/filter area
- name card list area
- per-card state indicators
- action buttons area

# ============================================================
# 3. LIST ITEM FIELDS
# ============================================================

Each list entry may show:
- full name
- company name
- department name
- title name
- app share state
- ERP publication state
- relationship exists indicator
- sync state indicator

# ============================================================
# 4. MAIN ACTION BUTTONS
# ============================================================

- create button
- settings button
- share button
- ERP-wide share button
- delete button

# ============================================================
# 5. MAIN NAVIGATION
# ============================================================

- tap a card -> open detail screen
- tap settings -> open settings screen
- tap share -> execute app-internal share flow
- tap ERP-wide share -> execute ERP publication flow

# ============================================================
# 6. LIST BEHAVIOR
# ============================================================

The screen should support:
- simple search
- easy state visibility
- multi-selection where needed
- quick transition to detail

