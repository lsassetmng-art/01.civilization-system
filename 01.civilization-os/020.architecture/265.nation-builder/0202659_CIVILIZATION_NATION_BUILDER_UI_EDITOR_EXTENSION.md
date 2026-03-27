# ============================================================
# CIVILIZATION NATION BUILDER UI EDITOR EXTENSION
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the extension of nation builder UI
to include zoning editor and market tier editor
inside CivilizationOS.


# ============================================================
# 1. EXTENDED BUILDER SECTIONS
# ============================================================

Nation builder UI should extend its sections to include:

- basic identity
- territory
- population
- currency
- regime bundle
- zoning editor
- market tier editor
- facility placement
- infrastructure placement
- validation
- approval
- publication / activation


# ============================================================
# 2. SCREEN LAYOUT PRINCIPLE
# ============================================================

Recommended extended layout:

left:
- section navigation
- validation anchors
- draft status indicators

center:
- main editor surface
- zoning map editor
- market tier editor
- facility/infrastructure placement surface

right:
- selected object/zone/tier detail
- validation result
- contradiction summary
- publish/readiness summary


# ============================================================
# 3. DIFF PRINCIPLE
# ============================================================

For revision drafts,
the UI should support diffs for:
- zoning changes
- market tier changes
- listing-style changes
- zone rule changes
- company-type listing eligibility changes

Diff visibility is recommended.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

The extended nation builder UI in CivilizationOS must be:
- editor-extended
- zoning-aware
- market-tier-aware
- diff-aware
- validation-aware
