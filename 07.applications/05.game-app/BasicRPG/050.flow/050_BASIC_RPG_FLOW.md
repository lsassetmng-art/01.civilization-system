# ============================================================
# BASIC RPG FLOW
# ============================================================

status: draft
layer: flow
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

primary_loops:
- home -> quest -> battle -> reward -> upgrade -> next quest
- home -> dungeon -> battle -> loot -> equip -> retry
- home -> store -> purchase -> entitlement -> claim -> return
