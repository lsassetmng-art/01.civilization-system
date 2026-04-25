# ============================================================
# POCKETSECRETARY REUSABLE PHASE A REINFORCEMENT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: PocketSecretary
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-phasea-reinforcement-recipe

purpose:
Captures the reusable reinforcement recipe proven during the
PocketSecretary planning work so the next BusinessOS app can be
advanced faster and with fewer unnecessary micro-iterations.

recommended_reuse_sequence:
- step_01:
  - preserve the app core idea instead of rewriting by default
- step_02:
  - identify the real differentiator and make it explicit
- step_03:
  - add missing architecture notes only for that differentiator
- step_04:
  - add exact payload or model documents only where ambiguity blocks implementation
- step_05:
  - add interface notes only where the new behavior becomes visible
- step_06:
  - add implementation guide and diff audit memo
- step_07:
  - reflect the result in 000_BUSINESS_APP_LEDGER.md
- step_08:
  - move to Phase A entry documents only after the diff layer is coherent
- step_09:
  - freeze DDL, DTO, stub boundaries, and slice order
- step_10:
  - close with implementation-ready and transition-ready memos

what_worked_well_here:
- additive-only reinforcement
- differentiator-first architecture completion
- freezing DDL and DTO before generation
- using slice order instead of all-at-once generation
- closing planning once implementation-ready status was reached

what_to_avoid_next_time:
- reopening stable core text too early
- jumping to implementation before exact payload and row-family clarity
- continuing micro-memos after bundled planning is already stable
- mixing audit concerns into mutation planning
- mixing action continuity state with raw conversation history

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent
