# ============================================================
# QA MANAGEMENT SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

QA management screen manages question-answer items
linked to an estimate.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- QA list
- create QA button
- status filter
- owner display
- due date display
- linked estimate summary
- premium lock badge

# ============================================================
# 3. QA ROW FIELDS
# ============================================================

Each QA row should show:

- question summary
- status
- owner
- due date
- last updated time

# ============================================================
# 4. DETAIL ACTIONS
# ============================================================

- open detail
- update answer
- change status
- assign owner where allowed

# ============================================================
# 5. PREMIUM RULE
# ============================================================

When premium is inactive,
create/edit actions must be blocked clearly.

