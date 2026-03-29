# ============================================================
# BUSINESS APP ACCESS CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official app access control architecture of BusinessOS.

This architecture covers:
- user-scoped data ownership
- app requested scope
- user granted scope
- effective access decision
- OS API enforcement

BusinessOS is primarily user-scoped.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

BusinessOS data ownership is user-scoped.

This means:
- user-owned data is primarily organized by user scope
- same-user data does not require app-by-app physical DB silos by default

However:
effective app access is not automatically DB-wide.

All effective restrictions must be enforced
through BusinessOS API policy and runtime checks.


# ============================================================
# 2. ACCESS DECISION PRINCIPLE
# ============================================================

Effective access must be determined by:

app_requested_scope
AND
user_granted_scope
AND
system_policy

All three are required.

No app may access a resource merely because
the underlying data belongs to the same user.


# ============================================================
# 3. REQUESTED SCOPE PRINCIPLE
# ============================================================

Each app must declare the maximum scope it requests.

Requested scope must define:
- resource_domain
- action_type
- requested_scope_level
- sensitivity_level

This is developer-declared maximum authority only.


# ============================================================
# 4. USER GRANT PRINCIPLE
# ============================================================

The user of the app must decide actual granted scope.

User grant should be managed through:
- install / first-run review
- app settings permission control
- runtime reconfirmation for sensitive actions where required

The user here means the app user, not the developer.


# ============================================================
# 5. RESOURCE DOMAIN PRINCIPLE
# ============================================================

Resource domains must be explicit.

Examples:
- business_card
- contact
- expense
- task
- customer
- inventory
- profile
- workspace_setting
- export_surface


# ============================================================
# 6. ACTION PRINCIPLE
# ============================================================

Action types must be explicit.

Examples:
- read
- write
- delete
- execute
- export

This action-based model is mandatory.


# ============================================================
# 7. SENSITIVE ACTION PRINCIPLE
# ============================================================

Sensitive actions may require stronger controls.

Examples:
- delete
- export
- bulk_write
- bulk_delete

Recommended grant modes:
- allow
- deny
- ask_each_time


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

BusinessOS app access control must be:

- user-scoped in data ownership
- app-scoped in request declaration
- user-grant-aware in effective permission
- API-enforced at runtime
- fail-closed on unresolved rule chains
