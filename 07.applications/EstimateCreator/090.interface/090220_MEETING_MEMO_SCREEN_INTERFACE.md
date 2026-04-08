# ============================================================
# MEETING MEMO SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Meeting memo screen manages meeting-related notes
for estimate activity.

# ============================================================
# 2. MODES
# ============================================================

Supported modes:

- free_form
- structured

free_form is standard.
structured requires premium access.

# ============================================================
# 3. PRIMARY UI ELEMENTS
# ============================================================

- mode switch or mode badge
- memo editor area
- template selector for structured mode
- share button
- revoke share button
- sync state label

# ============================================================
# 4. PREMIUM RULE
# ============================================================

When structured mode is unavailable,
the screen must show a clear premium lock indication
instead of silently hiding the capability.

