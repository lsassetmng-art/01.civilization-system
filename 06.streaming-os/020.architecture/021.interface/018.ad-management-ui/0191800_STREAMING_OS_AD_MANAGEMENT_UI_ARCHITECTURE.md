# ============================================================
# STREAMING OS AD MANAGEMENT UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: ad-management-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for managing internal advertisement data
inside StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must allow operators to:
- register ad data
- review ad creative or payload
- define insertion rules
- inspect ad frequency meaning
- review ad display history
- distinguish internal ads from external platform ads

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- ad list
- ad detail card
- sponsor / origin summary
- insertion rule panel
- frequency policy panel
- target condition panel
- display history panel
- governance / restriction warning panel

# ============================================================
# 4. AD LIST
# ============================================================

The ad list should show:
- ad title
- ad status
- ad sponsor or origin
- active period
- target content scope
- insertion mode summary

# ============================================================
# 5. INSERTION RULE PANEL
# ============================================================

The insertion rule panel should expose:
- live / archive / clip targeting
- pre-roll / mid-roll / post-roll / overlay
- frequency setting
- company restriction if relevant
- governance block if relevant

# ============================================================
# 6. DISPLAY HISTORY PANEL
# ============================================================

The history panel should show:
- where the ad was inserted
- which session or asset received it
- when it was shown
- whether it completed or was skipped if relevant
- whether the insertion was blocked or restricted

# ============================================================
# 7. INTERNAL / EXTERNAL DISTINCTION
# ============================================================

The UI must clearly distinguish:
- StreamingOS internal ad control
- external platform ad behavior

Operators must not assume
that YouTube-side ad behavior
is the same as StreamingOS-side ad behavior.

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The ad management UI
shall manage ad data,
ad insertion rules,
and ad display history
as internal StreamingOS structures.

It shall preserve the distinction between
StreamingOS-native advertising
and external-platform advertising behavior.

