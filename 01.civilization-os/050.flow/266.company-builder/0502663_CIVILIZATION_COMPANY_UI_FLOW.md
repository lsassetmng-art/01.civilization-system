# ============================================================
# CIVILIZATION COMPANY UI FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow for company UI list/discovery,
analytics, evaluation, and listing-readiness
inside CivilizationOS.


# ============================================================
# 1. COMPANY LIST / DISCOVERY FLOW
# ============================================================

company published
-> company added to list index
-> category/public visibility resolved
-> searchable/listed company profile becomes available


# ============================================================
# 2. ANALYTICS FLOW
# ============================================================

company state changes
-> analytics inputs refresh
-> analytics snapshot generated
-> metrics updated
-> analytics screens refreshed


# ============================================================
# 3. EVALUATION FLOW
# ============================================================

company created
-> initial evaluation generated
-> company operates
-> current evaluation refreshed over time
-> public rating view updated where applicable


# ============================================================
# 4. LISTING / IPO FLOW
# ============================================================

company matures
-> listing-readiness evaluated
-> company submits listing application when eligible
-> review
-> approved_for_listing or rejected
-> listed state if approved


# ============================================================
# 5. FINAL FLOW RULE
# ============================================================

Company UI flow must remain:
- list-aware
- analytics-aware
- evaluation-aware
- listing-readiness-aware
