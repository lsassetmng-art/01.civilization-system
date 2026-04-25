# ============================================================
# BASIC RPG RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

runtime_surfaces:
- login/session bootstrap
- title/home/town runtime
- quest execution runtime
- battle runtime
- reward runtime
- store runtime
- save/sync runtime

runtime_rules:
- stale local cache must not silently overwrite fresher cloud truth
- premium entitlement must be revalidated on sensitive entry points
- locale switch must update wording without forcing logout
