# ============================================================
# STREAM STUDIO DOCUMENT SYSTEM MAP
# ============================================================

status: master-map
layer: implementation-summary
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Shows how the major StreamStudio document families are organized.

document_system_map:

  root:
    role:
      - entry point
      - overview
      - integrated canonical bundle

  010_constitution:
    role:
      - app identity
      - definition baseline

  020_architecture:
    role:
      - core architecture and domain separation

  030_model:
    role:
      - entities and domain model extension

  040_screen_and_stateflow:
    role:
      - screens
      - state transitions
      - blocker-aware navigation

  050_api:
    role:
      - exact request / response families
      - error and validation contract

  060_integration:
    role:
      - integration-facing design boundary

  070_operations:
    role:
      - runtime jobs
      - retry
      - dead-letter
      - reconciliation

  080_policy:
    role:
      - policy
      - permission matrix
      - governance rules

  120_implementation:
    role:
      - readiness freeze
      - ledgers
      - phase packages
      - sql bundles
      - roadmap and handoff packs

  900_meta:
    role:
      - common component candidates
      - candidate data areas
      - review / verify / repair runners
      - batch summaries

reading_flow:
- understand identity and architecture first
- then screen / api / runtime / policy
- then ledgers and phase packs
- then roadmap and master summary

fixed_statement:
This is the canonical high-level map of StreamStudio document families.
