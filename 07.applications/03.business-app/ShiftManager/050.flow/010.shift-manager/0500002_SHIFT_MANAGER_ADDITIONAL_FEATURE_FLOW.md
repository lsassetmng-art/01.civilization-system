# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE FLOW
# ============================================================

status: design-extension
type: additional-feature-flow
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. HEADQUARTERS DASHBOARD FLOW
# ============================================================

flow:
headquarters opens dashboard
-> site status/cards load
-> shortage/unpublished/unconfirmed sites identified
-> manager drills into site
-> site shift/publication state reviewed

# ============================================================
# 2. REQUESTED DAY-OFF FLOW
# ============================================================

flow:
staff submits requested day off
-> request stored
-> manager reviews
-> status approved/rejected
-> planning/generation uses approved requests as input

# ============================================================
# 3. CHANGE CONFIRMATION FLOW
# ============================================================

flow:
republish or urgent change occurs
-> difference rows created
-> affected viewers receive notice
-> viewer marks change confirmed
-> manager sees pending/confirmed counts

# ============================================================
# 4. SCHEDULED AUTO GENERATION FLOW
# ============================================================

flow:
manager defines auto generation schedule
-> timer waits until configured date/time
-> draft generation runs
-> execution result stored
-> manager reviews draft
-> manager publishes manually if acceptable

# ============================================================
# 5. LIGHTWEIGHT ANALYTICS FLOW
# ============================================================

flow:
site metrics aggregated
-> dashboard snapshot updated
-> headquarters or manager reviews
-> operational problem areas identified

# ============================================================
# 6. FUTURE EXCHANGE / SUPPORT FLOW
# ============================================================

future_flow:
staff requests exchange or support
-> manager reviews
-> approved change becomes schedule mutation
-> publication/republication follows normal rules

