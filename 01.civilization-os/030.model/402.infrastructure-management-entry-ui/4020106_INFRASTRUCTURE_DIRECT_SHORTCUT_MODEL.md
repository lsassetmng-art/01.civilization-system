# ============================================================
# INFRASTRUCTURE DIRECT SHORTCUT MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-direct-shortcut

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the optional direct field-map shortcut
for infrastructure placement.


# ============================================================
# 2. RULES
# ============================================================

rules:
- a direct infrastructure shortcut may appear on field map if current actor has sufficient authority
- direct shortcut must still resolve to a valid infrastructure authority owner
- direct shortcut must not bypass permission evaluation
- direct shortcut may be hidden when infrastructure governance does not allow current actor action
- direct shortcut should backlink to the resolved authority context


# ============================================================
# 3. FINAL RULE
# ============================================================

Direct shortcut exists for usability,
not for bypassing infrastructure governance.
