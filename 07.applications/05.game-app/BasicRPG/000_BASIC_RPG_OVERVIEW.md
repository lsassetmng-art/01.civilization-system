# ============================================================
# BASIC RPG OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for BasicRPG.

summary:
BasicRPG is a cross-platform, story-driven, turn-based RPG application.
It targets iPhone, Android, PC, and tablet from a shared product design.
The product is intentionally lighter than large-scale gacha RPGs and focuses on:
- clear chapter progression
- fair monetization
- offline-tolerant play
- multilingual support
- multicurrency purchase handling
- implementation-ready document structure

recommended_v1_positioning:
- single-player first
- town -> field/dungeon -> battle -> reward -> growth loop
- no PvP in v1
- no guild dependency in v1
- no loot box requirement in v1
- cloud save with offline cache
- app store billing plus web purchase policy separation

truth_model:
- gameplay truth is stored in Supabase life schema
- local storage is cache and offline queue
- persona identity may be used for account resolution
- ERP integration is optional and limited to financial/export side only

structure:
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.meta
