# ============================================================
# ESTIMATE OFFLINE TO ONLINE SYNC FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This flow defines how offline-created or offline-edited data
is synchronized after connectivity returns.

# ============================================================
# 2. FLOW
# ============================================================

1. offline mode active
2. local edits stored
3. pending operations queued
4. connectivity restored
5. auth context validated
6. sync coordinator starts replay
7. push local changes
8. fetch remote updates
9. detect and handle conflicts
10. finalize sync state
11. refresh UI status

# ============================================================
# 3. OBJECTS INCLUDED
# ============================================================

Objects typically included:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- share requests
- publication preparation requests
- QA records
- template usage records

