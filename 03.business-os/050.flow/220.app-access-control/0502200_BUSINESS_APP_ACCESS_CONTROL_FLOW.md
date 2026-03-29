# ============================================================
# BUSINESS APP ACCESS CONTROL FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define flow for app access control in BusinessOS.


# ============================================================
# 1. APP INSTALL / FIRST-RUN FLOW
# ============================================================

app install or first run
-> requested scopes displayed
-> user grant selection
-> grant records stored
-> app becomes usable under effective access rules


# ============================================================
# 2. APP RUNTIME ACCESS FLOW
# ============================================================

app action request
-> requested scope lookup
-> user grant lookup
-> system policy lookup
-> effective access decision
-> allow / deny / ask_each_time


# ============================================================
# 3. SETTINGS UPDATE FLOW
# ============================================================

user opens app permission settings
-> current grants displayed
-> user modifies grants
-> grant records updated
-> future runtime decisions change accordingly


# ============================================================
# 4. FINAL FLOW RULE
# ============================================================

BusinessOS app access flow must remain:
- explicit
- user-grant-aware
- runtime-checkable
- policy-enforced
