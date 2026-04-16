# ============================================================
# QUICK FORECAST IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for QuickForecast.

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

Implementation must preserve the canonical sequence:

Forecast
-> Action
-> Proposal
-> Profit

while remaining mobile-first and local-first.

# ============================================================
# 2. IMPLEMENTATION PRIORITIES
# ============================================================

priorities:
- fast draft creation
- stable local persistence
- editable generated content
- explicit state handling
- safe Pro enterprise linkage
- visible failure handling

# ============================================================
# 3. IMPLEMENTATION CONSTRAINTS
# ============================================================

constraints:
- Basic and Pro capability boundary must remain explicit
- generated draft content must remain user-editable
- regeneration must not silently destroy user-authored content
- enterprise submission must remain explicitly triggered
