# ============================================================
# STREAMING OS TIPPING AND REVENUE UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: tipping-and-revenue-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for tipping and revenue interpretation views
in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must make revenue meaning explainable.

It must distinguish:
- gross tips
- fees
- net tips
- held tips
- refunded tips
- primary beneficiary
- performer attribution
- secondary distribution reference

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- revenue summary card
- beneficiary summary card
- tip event list
- performer attribution view
- hold / refund warning panel
- secondary distribution summary
- downstream linkage note

# ============================================================
# 4. REVENUE SUMMARY CARD
# ============================================================

Show:
- total gross tips
- total fees
- total net tips
- total held amount
- total refunded amount
- realized amount
- unsettled amount

# ============================================================
# 5. BENEFICIARY SUMMARY CARD
# ============================================================

Show:
- primary revenue beneficiary
- beneficiary type
- corporate ownership notice if applicable
- performer attribution does not change primary ownership notice

# ============================================================
# 6. TIP EVENT LIST
# ============================================================

Each row may show:
- tip timestamp
- amount
- currency
- fee
- net
- target performer if any
- status
- message preview

# ============================================================
# 7. SECONDARY DISTRIBUTION SUMMARY
# ============================================================

Show:
- distribution rule reference
- distribution status
- pending downstream processing
- BusinessOS / ERP handoff note if relevant

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The tipping and revenue UI
shall explain primary revenue ownership clearly,
especially for corporate streams.

Performer-directed tips may be shown,
but they shall not visually imply
automatic transfer of primary revenue ownership.

