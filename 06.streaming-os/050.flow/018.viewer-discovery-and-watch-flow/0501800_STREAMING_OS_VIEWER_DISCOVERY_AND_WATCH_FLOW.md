# ============================================================
# STREAMING OS VIEWER DISCOVERY AND WATCH FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: viewer-discovery-and-watch-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how viewers discover and enter content
inside StreamingOS.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

viewer opens home
-> recommendation or ranking-linked discovery shown
-> viewer selects content or searches explicitly
-> target content resolved
-> if scheduled live, waiting room entered
-> if live, live watch entered
-> if archive, archive watch entered
-> if clip, clip watch entered
-> reactions/history/queue updates occur
-> next watch path determined

# ============================================================
# 3. SEARCH FLOW
# ============================================================

Search flow should preserve:
- explicit search query entry
- search result list
- search-result-to-watch transition

Search must remain distinct from passive recommendation flow.

# ============================================================
# 4. WAITING ROOM FLOW
# ============================================================

Scheduled live flow:
- waiting room entered
- countdown visibility shown
- follow/notify relation may be updated
- live start transition occurs when session becomes live

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- home discovery
- search
- waiting room
- live watch
- archive watch
- clip watch

