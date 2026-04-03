# ============================================================
# NATION AND PUBLIC AUTHORITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: nation-and-public-authority

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AUTHORITY SCOPES
# ============================================================

authority_scopes:
- personal_scope
- company_scope
- city_scope
- nation_scope
- public_scope
- military_scope
- system_scope


# ============================================================
# 2. RULES
# ============================================================

rules:
- nation builder creation and edit require nation-scope authority
- public civic facilities require city-scope or nation-scope authority
- military mobilization and military facility changes require military-scope authority
- public infrastructure placement requires city-scope, nation-scope, or delegated system-scope authority
- company facilities require company-scope authority unless overridden by public governance rules


# ============================================================
# 3. FINAL RULE
# ============================================================

Authority scope determines
how far the actor's permission reaches
across public and sovereign objects.
