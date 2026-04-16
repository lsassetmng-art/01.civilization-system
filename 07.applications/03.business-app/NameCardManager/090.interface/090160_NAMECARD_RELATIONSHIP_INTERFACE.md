# ============================================================
# NAMECARD RELATIONSHIP INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: relationship_display
owner: Boss
prepared_by: Zero

purpose:
Defines interface behavior for showing related entries.

# ============================================================
# 1. UI GOAL
# ============================================================

The interface should allow the user to quickly recognize
important related people and business links for a selected card.

# ============================================================
# 2. DISPLAY LOCATIONS
# ============================================================

Relationship visibility may appear in:
- name card list screen as simple indicator
- name card detail screen as related entries section
- related entry navigation path

# ============================================================
# 3. DETAIL SCREEN DISPLAY
# ============================================================

The related entries section may show:
- same-company contacts
- same-department contacts
- decision makers
- working contacts
- project-related contacts
- order-related contacts
- introducer / introduced relation

# ============================================================
# 4. LIST SCREEN DISPLAY
# ============================================================

The list screen may show:
- relationship exists icon
- relationship count summary
- important relation indicator

# ============================================================
# 5. INTERACTION
# ============================================================

The user may:
- open related entries section
- tap related card
- move from one related card to another
- inspect relation label

# ============================================================
# 6. PRESENTATION RULE
# ============================================================

The interface should remain simple and readable.
It should not overload the screen with excessive graph complexity.

