# ============================================================
# NAME CARD DETAIL SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: namecard_detail
owner: Boss
prepared_by: Zero

purpose:
Defines the detail screen for a selected name card.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The detail screen provides full visibility and edit access
for the selected name card and related information.

# ============================================================
# 2. MAIN SECTIONS
# ============================================================

- basic information section
- person information section
- responsibility scope section
- order history section
- related entries section
- memo section
- sharing state section
- ERP publication state section

# ============================================================
# 3. BASIC INFORMATION SECTION
# ============================================================

May display:
- full name
- company name
- department name
- title name
- email
- phone
- address
- website
- front image
- back image

# ============================================================
# 4. PERSON INFORMATION SECTION
# ============================================================

May display:
- tendency note
- personality note
- communication note
- relationship note

# ============================================================
# 5. RESPONSIBILITY SCOPE SECTION
# ============================================================

May display:
- authority scope note
- decision scope note
- responsibility scope note
- work scope note
- work content note
- influence scope note

# ============================================================
# 6. ORDER HISTORY SECTION
# ============================================================

May display:
- order date
- order type
- order summary
- amount note
- project note
- contact result note

# ============================================================
# 7. RELATED ENTRIES SECTION
# ============================================================

May display:
- related name cards
- related same-company persons
- project/deal-related persons
- decision-maker / working-contact relation

# ============================================================
# 8. MAIN ACTIONS
# ============================================================

- add detail
- update detail
- delete detail
- revoke app-internal share
- navigate to related entry

