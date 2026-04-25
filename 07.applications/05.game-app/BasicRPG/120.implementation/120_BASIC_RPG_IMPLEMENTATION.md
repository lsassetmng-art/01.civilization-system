# ============================================================
# BASIC RPG IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

implementation_order:
1. root scaffold and document freeze
2. database DDL freeze
3. API request/response freeze
4. screen stateflow freeze
5. web shell implementation
6. core gameplay implementation
7. store and entitlement implementation
8. localization and multicurrency implementation
9. telemetry, operations, and release hardening

phase_a_goal:
Playable chapter 1 vertical slice with:
- login
- language switch
- quest board
- one dungeon family
- turn battle
- reward grant
- equipment
- store/pass skeleton
