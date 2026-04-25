# ============================================================
# BASIC RPG ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

logical_components:
- client shell
- local cache and offline queue
- session/auth resolver
- player progression service
- quest service
- battle resolver service
- item and economy service
- purchase and entitlement service
- localization service
- telemetry and audit service
- CX22073 knowledge support adapter

major_boundaries:
- UI must not embed balance truth
- battle resolver owns result formation
- purchase logic must be separate from catalog presentation
- soft-currency logic must be separate from fiat payment logic
- CX22073 outputs are advisory, not direct mutation authority

recommended_v1_stack:
- web app first
- responsive UI for phone/tablet/PC
- shared JavaScript domain layer
- Supabase for auth-support, data, function endpoints, and storage
- optional thin Android shell later
