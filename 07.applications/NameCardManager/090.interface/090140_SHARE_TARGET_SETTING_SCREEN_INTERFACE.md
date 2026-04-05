# ============================================================
# SHARE TARGET SETTING SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen: share_target_setting
owner: Boss
prepared_by: Zero

purpose:
Defines the screen used to manage app-internal share targets.

# ============================================================
# 1. SCREEN GOAL
# ============================================================

The share target setting screen manages the people who may
receive app-internal name card sharing.

# ============================================================
# 2. MAIN COMPONENTS
# ============================================================

- share target list
- add target action
- remove target action
- enable target toggle
- disable target toggle

# ============================================================
# 3. MAIN ACTIONS
# ============================================================

- add share target
- remove share target
- enable share target
- disable share target

# ============================================================
# 4. RULE
# ============================================================

This screen applies only to app-internal sharing.
It does not govern ERP-wide publication.

