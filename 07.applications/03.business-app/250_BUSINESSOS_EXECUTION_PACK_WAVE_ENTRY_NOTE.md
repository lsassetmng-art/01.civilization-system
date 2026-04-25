# ============================================================
# BUSINESSOS EXECUTION PACK WAVE ENTRY NOTE
# ============================================================

status: canonical
layer: meta
system: applications
domain: business-app
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: execution-pack-wave-entry

purpose:
Declares that the current BusinessOS app planning wave has reached a level
where execution-pack entry work can begin in a controlled order.

wave_entry_basis:
- multiple BusinessOS apps are already planning-closed
- each completed app already has Phase A entry discipline
- additive DDL direction, DTO freeze direction, stub planning direction,
  and execution entry direction have been repeated enough to standardize
- moving to execution packs now yields more value than continuing only
  app-selection memos

wave_policy:
- do not start live execution across all apps at once
- begin from one app and keep execution packs isolated
- start from safe output roots first
- preserve additive-only behavior
- preserve review gates before SQL apply
- preserve existing canonical design documents as source of truth

first_recommended_execution_pack_target:
- NameCardManager

why_namecardmanager_first:
- the current reinforcement wave originally started from NameCardManager
- its differentiator is already clearly fixed:
  capture and image staging, relationship visibility, company timeline,
  ERP bridge separation
- it is a strong first candidate for proving the execution-pack method
  without reopening broad cross-app uncertainty

resulting_next_move:
- create execution-pack start documents for NameCardManager first
- defer other app execution packs until the first pattern is fixed cleanly
