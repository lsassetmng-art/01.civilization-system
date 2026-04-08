# ============================================================
# ESTIMATE DETAIL SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Estimate detail screen is the primary business summary view
for a selected estimate.

# ============================================================
# 2. PRIMARY SECTIONS
# ============================================================

- header summary
- customer summary
- amount summary
- line item section
- opportunity memo summary
- meeting memo summary
- inventory summary
- QA summary
- state badge section
- action section

# ============================================================
# 3. HEADER SUMMARY
# ============================================================

Header should show:

- estimate number
- title
- estimate class
- issue date
- valid until
- customer snapshot name

# ============================================================
# 4. STATE BADGES
# ============================================================

Detail screen should visibly show:

- Draft
- Offline
- Pending Sync
- Shared
- Approval Pending
- Publication Pending
- Published
- Publication Failed
- Conflict

# ============================================================
# 5. PRIMARY ACTIONS
# ============================================================

- edit
- share
- revoke share
- request publication
- refresh inventory
- open memo
- open meeting memo
- open QA
- apply template

# ============================================================
# 6. UX RULE
# ============================================================

The screen must never visually imply that local save means
ERP publication completion.

