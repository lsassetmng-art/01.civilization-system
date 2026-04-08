# ============================================================
# 004 / 005 / 006 / 012 DOMAIN REBIND INDEX
# ============================================================

status: canonical
type: bible-navigation
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Provides the navigation entry for the rebound domain set:
004.mode
005.story
006.player
012.integration

target_bundle:
- 900.bible/004_005_006_012_DOMAIN_REBIND/004_005_006_012_DOMAIN_REBIND_FULL.md
- 900.bible/004_005_006_012_DOMAIN_REBIND/004_005_006_012_DOMAIN_REBIND_INDEX.md

included_domains:
- 004.mode
- 005.story
- 006.player
- 012.integration

included_layers:
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

reading_order:
1. This index
2. Rebind index
3. Rebind full

usage_rules:
- Use this bundle when reviewing cross-layer consistency
  for mode, story, player, and integration together.
- Use original per-layer files when editing canonical source.
- Do not treat rebound output as replacement for source files.
