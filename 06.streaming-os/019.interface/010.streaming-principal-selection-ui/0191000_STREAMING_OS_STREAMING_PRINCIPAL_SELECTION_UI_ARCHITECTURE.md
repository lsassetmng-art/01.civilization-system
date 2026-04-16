# ============================================================
# STREAMING OS STREAMING PRINCIPAL SELECTION UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-principal-selection-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for selecting the streaming principal in StreamingOS.

The UI must help the user clearly distinguish:
- who owns the stream
- who merely performs in the stream
- whether the stream is corporate, individual, group,
  or ai_human owned

# ============================================================
# 2. UI GOAL
# ============================================================

The principal selection UI must prevent confusion
between:
- company-affiliated stream
- personal stream by company-affiliated user
- group-owned stream
- ai_human-owned stream

The UI must make ownership explicit before session creation.

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended screen blocks:

- principal candidate list
- principal type filter
- principal status badge
- affiliation summary
- ownership mode summary
- rights / revenue summary preview
- eligibility warning panel
- confirm principal action

# ============================================================
# 4. PRINCIPAL CANDIDATE LIST
# ============================================================

The candidate list should show:
- display name
- principal type
- Civilization ID
- active / suspended status
- affiliation label if relevant
- ownership suitability hints

Principal types:
- individual
- group
- company
- ai_human

# ============================================================
# 5. TYPE FILTER
# ============================================================

The UI should allow filtering candidates by:
- all
- individual
- group
- company
- ai_human

This improves speed and reduces accidental selection.

# ============================================================
# 6. OWNERSHIP MODE PREVIEW
# ============================================================

When a candidate is selected,
the UI should preview:

- ownership_mode
- primary rights holder
- primary revenue beneficiary
- whether the stream is corporate official
- whether performer roles will be separate

This preview is critical for company streams.

# ============================================================
# 7. ELIGIBILITY WARNING PANEL
# ============================================================

The UI should display warnings when:
- principal is suspended
- principal is banned
- required permission is missing
- company stream approval is missing
- stream ownership conflicts with current user context

Warning panel examples:
- not eligible to stream
- company approval required
- rights holder override exists
- monetization may be restricted

# ============================================================
# 8. CONFIRMATION RULE
# ============================================================

The UI must require explicit confirmation of principal selection
before proceeding to program or session creation.

Recommended confirmation text meaning:
- this stream will be owned by the selected principal
- performer participation does not change ownership automatically
- rights and revenue default to the selected principal
  unless separately overridden by policy

# ============================================================
# 9. CORPORATE STREAM UX RULE
# ============================================================

If company is selected:
- show company identity strongly
- show company ownership badge
- show primary revenue = company
- show primary rights = company
- show performer participation handled later

This prevents employees from confusing
participation with ownership.

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

The streaming principal selection UI
shall make stream ownership explicit before stream creation.

The UI shall distinguish:
- stream owner
- performer
- corporate ownership
- individual ownership
- primary rights ownership
- primary revenue ownership

The UI shall warn when selected principal
is not eligible or requires additional approval.

