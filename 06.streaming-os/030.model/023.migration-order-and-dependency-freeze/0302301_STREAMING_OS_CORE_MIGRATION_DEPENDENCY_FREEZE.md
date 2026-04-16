# ============================================================
# STREAMING OS CORE MIGRATION DEPENDENCY FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE TABLE GROUPS
# ============================================================

core_groups_in_order:
- group_01_principals_and_channels
- group_02_sessions_and_session_state
- group_03_assets_and_publish
- group_04_tipping_and_currency
- group_05_reactions_rankings_ads

# ============================================================
# 2. ORDER RULE
# ============================================================

group_01_principals_and_channels should precede:
- sessions
- creator profile linkage
- corporate oversight linkage

group_02_sessions_and_session_state should precede:
- archive assets
- tip events
- reaction aggregates where session references are used
- review queue items referring to session-linked targets

group_03_assets_and_publish should precede:
- publish jobs/results
- creator upload/review linkage to asset-backed targets
- moderation/report targets that reference assets

group_04_tipping_and_currency should precede:
- BusinessOS linkage refs
- creator monetization analytics summaries

group_05_reactions_rankings_ads should precede:
- creator analytics refresh projections
- viewer home/discovery derivatives when ranking-linked

# ============================================================
# 3. FREEZE PRINCIPLE
# ============================================================

Dependency freeze rule:
- do not introduce reverse dependencies from core groups
  back into later convenience groups
- later projections may reference core ids,
  but core tables should remain minimally coupled

