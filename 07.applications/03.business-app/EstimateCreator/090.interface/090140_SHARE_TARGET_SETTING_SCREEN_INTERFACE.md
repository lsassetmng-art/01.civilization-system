# ============================================================
# SHARE TARGET SETTING SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This screen manages preconfigured users
who may receive app-internal shared content.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- target list
- add target button
- enable/disable toggle
- target scope label
- remove or disable action

# ============================================================
# 3. ROW DISPLAY
# ============================================================

Each target row should show:

- display name
- target user identifier summary
- scope
- enabled state

# ============================================================
# 4. COMMON COMPONENT RULE
# ============================================================

This screen should reuse the same common UI approach
as NameCardManager.

