# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 START ORDER NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fixes the recommended start order for Phase 1 implementation.

phase_1_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

# ============================================================
# 1. START ORDER
# ============================================================

start_order:
1. portfolio list read route
2. product detail read route
3. score refresh route
4. classification draft save route
5. proposal save route

# ============================================================
# 2. WHY THIS ORDER
# ============================================================

why_this_order:
- list and detail define the read-side backbone
- score refresh defines the first judgment update path
- classification draft save defines the first governed write path
- proposal save defines the second governed write path
- this sequence opens the smallest useful judgment loop safely

# ============================================================
# 3. DO NOT START FROM
# ============================================================

do_not_start_from:
- approval queue
- full review session
- alert routing
- audit console
- settings / preset management
- broad reflection drafts
- portal/index reflection notes

# ============================================================
# 4. REQUIRED CHECK BEFORE EACH STEP
# ============================================================

required_check_before_each_step:
- exact flow payload confirmed
- exact table / enum confirmed
- api contract confirmed
- authorization implication confirmed
- ERP / forecast boundary implication confirmed

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Phase 1 should start from read backbone first,
then judgment update,
then governed write routes.
