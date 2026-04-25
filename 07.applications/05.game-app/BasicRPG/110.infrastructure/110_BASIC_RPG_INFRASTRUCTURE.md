# ============================================================
# BASIC RPG INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

infrastructure_shape:
- static web hosting layer
- Supabase Postgres
- edge/serverless action endpoints where needed
- asset storage bucket
- notification provider
- analytics/audit export pipeline

deployment_tiers:
- dev
- staging
- production
