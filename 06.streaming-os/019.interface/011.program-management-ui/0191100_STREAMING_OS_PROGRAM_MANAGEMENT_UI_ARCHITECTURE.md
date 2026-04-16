# ============================================================
# STREAMING OS PROGRAM MANAGEMENT UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: program-management-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for creating and managing programs in StreamingOS.

A program is the reusable content unit
that may produce one or more sessions.

# ============================================================
# 2. UI GOAL
# ============================================================

The program UI must allow users to:
- create a new program
- edit program metadata
- assign ownership context
- review publication readiness context
- prepare future sessions

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- program basic information
- ownership summary
- performer default assignment section
- publication intent section
- monetization summary section
- future session list
- archive / clip relationship summary

# ============================================================
# 4. BASIC INFORMATION
# ============================================================

Program basic fields should include:
- program title
- subtitle
- summary
- category
- language
- default thumbnail
- default visibility intent
- internal notes

# ============================================================
# 5. OWNERSHIP SUMMARY
# ============================================================

The UI should display:
- stream principal
- ownership mode
- primary rights holder
- primary revenue beneficiary
- affiliation context

This must be read-only prominent if inherited
from the selected principal context.

# ============================================================
# 6. DEFAULT PERFORMER ASSIGNMENT
# ============================================================

The UI should allow defining default performer sets:
- host
- co-host
- guest template
- narrator
- persona performer
- ai_robot performer
- operator

This is a template layer,
not the final session record.

# ============================================================
# 7. PUBLICATION INTENT SECTION
# ============================================================

The UI should allow setting default publication intent:
- internal only
- archive keep only
- external publish candidate
- youtube push candidate

This remains intent only,
not final approval.

# ============================================================
# 8. MONETIZATION SUMMARY
# ============================================================

The UI should show:
- tipping allowed or not
- primary revenue beneficiary
- secondary distribution reference if any
- company-owned revenue notice if applicable

# ============================================================
# 9. SESSION PREPARATION LIST
# ============================================================

The UI should display associated sessions:
- upcoming
- live
- ended
- archived
- suspended
- cancelled

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The program management UI
shall present ownership, performer defaults,
publication intent, and monetization intent
in one coordinated interface.

Program configuration shall not hide
the selected ownership context.

