# ============================================================
# STREAMING OS PERFORMER ASSIGNMENT UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: performer-assignment-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for assigning performers to programs and sessions
in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must clearly distinguish:
- stream principal
- performer
- affiliation
- role in the session
- performer type boundary

The UI must prevent confusion between
ownership and participation.

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- performer candidate search
- performer type filter
- performer role assignment section
- affiliation summary
- performer eligibility warning panel
- participation timeline section
- confirm assignment action
- current performer list

# ============================================================
# 4. PERFORMER CANDIDATE TYPES
# ============================================================

Supported performer types:
- individual
- group
- company_representative
- ai_human
- persona
- ai_robot

The UI should visually distinguish
formal Civilization subjects
from dependent performers.

# ============================================================
# 5. CANDIDATE SEARCH / FILTER
# ============================================================

The UI should support:
- keyword search
- performer type filter
- affiliation filter
- currently assigned only
- available only
- blocked / unavailable visibility

# ============================================================
# 6. ROLE ASSIGNMENT SECTION
# ============================================================

The UI should allow explicit assignment of:
- host
- co_host
- guest
- narrator
- operator
- singer
- avatar_actor
- support

Role must be visible and editable
without implying ownership transfer.

# ============================================================
# 7. AFFILIATION SUMMARY
# ============================================================

For each performer,
the UI should show if relevant:
- affiliated company
- affiliated group
- performer type
- whether performer is independent or dependent
- whether performer is Persona or Ai(robot)

# ============================================================
# 8. ELIGIBILITY WARNING PANEL
# ============================================================

The UI should warn when:
- performer is blocked
- performer use permission is missing
- Persona use condition is unresolved
- ai_robot use condition is unresolved
- performer affiliation conflicts with session context

# ============================================================
# 9. CURRENT PERFORMER LIST
# ============================================================

The performer list should show:
- display name
- performer type
- role
- participation status
- affiliation
- warning badge if any

# ============================================================
# 10. CONFIRMATION RULE
# ============================================================

The confirmation area should state:
- performer participation does not change stream principal
- performer participation does not automatically change
  primary rights holder
- performer participation does not automatically change
  primary revenue beneficiary

# ============================================================
# 11. CANONICAL FIXED STATEMENT
# ============================================================

The performer assignment UI
shall treat performer assignment
as participation management,
not ownership reassignment.

The UI shall make performer type,
role,
affiliation,
and eligibility visible before assignment.

