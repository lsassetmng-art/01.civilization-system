# ============================================================
# BASIC RPG DEVELOPMENT
# ============================================================

status: draft
layer: development
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

development_roadmap:
- A0: folder scaffold and freeze docs
- A1: DB/API/stateflow exactness
- A2: chapter 1 playable vertical slice
- A3: store/pass/localization/multicurrency
- A4: save sync, ops dashboards, release prep

review_rules:
- roadmap before execution
- additive changes only unless explicit migration plan exists
- implementation follows frozen documents
- DB review participation required before SQL execution
