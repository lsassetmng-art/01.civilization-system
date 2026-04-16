# ============================================================
# NAMECARDMANAGER REUSABLE DIFF AUDIT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-diff-audit-recipe

purpose:
Captures the reusable design recipe proven during the
NameCardManager reinforcement work so the next BusinessOS app can
be advanced faster and with fewer tiny iterations.

recommended_reuse_sequence:
- step_01:
  - preserve the existing core idea instead of rewriting by default
- step_02:
  - identify the real differentiator and make it explicit
- step_03:
  - add missing architecture notes only for the new differentiator
- step_04:
  - add missing model or payload documents only where the new value needs exactness
- step_05:
  - add interface notes only where behavior became newly visible
- step_06:
  - add implementation guide and diff audit memo
- step_07:
  - reflect the result in the BusinessOS ledger
- step_08:
  - move to Phase A entry documents only after the diff layer is coherent
- step_09:
  - freeze DDL, DTO, stub boundaries, and slice order
- step_10:
  - close the planning layer with a design closure memo

what_worked_well_here:
- additive-only reinforcement
- keeping the core concept intact
- introducing company timeline as a visible differentiator
- freezing DTO and DDL before code generation
- moving from micro-steps to bundled design once the base stabilized

what_to_avoid_next_time:
- reopening stable core text too early
- jumping to implementation before exact payload and row-family direction
- splitting into too many tiny memos after the footing becomes stable
- mixing audit concerns into mutation planning
- mixing storage-byte handling into relational persistence planning

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure memo

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent
