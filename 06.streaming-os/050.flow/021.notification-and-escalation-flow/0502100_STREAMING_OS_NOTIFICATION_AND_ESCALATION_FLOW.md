# ============================================================
# STREAMING OS NOTIFICATION AND ESCALATION FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: notification-and-escalation-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how visible platform events become notifications,
alerts,
and escalation-visible outcomes in StreamingOS.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

platform event occurs
-> platform event record created
-> recipient scope determined
-> notification record created when relevant
-> notification delivery state updated
-> inbox-visible event appears
-> read / acknowledge / dismiss state changes later

# ============================================================
# 3. REVIEW ALERT FLOW
# ============================================================

Review-related flow:
- review queue condition reached
-> review alert created
-> operator visibility updated
-> acknowledgement or closure recorded

# ============================================================
# 4. ESCALATION FLOW
# ============================================================

Escalation-related flow:
- AI review escalates to human
or
- overdue review condition triggered
-> escalation alert created
-> operator visibility updated
-> escalation acknowledged / resolved / closed

# ============================================================
# 5. CREATOR / VIEWER DISTINCTION
# ============================================================

Event delivery must preserve distinct paths for:
- creator-facing notifications
- viewer-facing notifications
- operator-facing alerts

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- platform events
- notifications
- review alerts
- escalation alerts
- recipient-specific visible outcomes

