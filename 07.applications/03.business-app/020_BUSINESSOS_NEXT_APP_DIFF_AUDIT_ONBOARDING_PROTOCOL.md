# ============================================================
# BUSINESSOS NEXT APP DIFF AUDIT ONBOARDING PROTOCOL
# ============================================================

status: canonical
layer: meta
system: applications
domain: business-app
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-diff-audit-onboarding-protocol

purpose:
Defines the standard onboarding protocol for the next BusinessOS app
using the reusable reinforcement pattern proven in NameCardManager.

protocol:
- step_01:
  - preserve the app core idea unless a contradiction is found
- step_02:
  - identify the true differentiator and write it explicitly
- step_03:
  - add only the missing architecture notes needed by that differentiator
- step_04:
  - add exact payload or model documents only where ambiguity blocks implementation
- step_05:
  - add interface notes only where the new behavior becomes visible
- step_06:
  - add implementation guide and diff audit memo
- step_07:
  - reflect the result in 000_BUSINESS_APP_LEDGER.md
- step_08:
  - only after the diff layer is coherent, move to Phase A entry design
- step_09:
  - freeze DDL, DTO, stub boundaries, and slice order
- step_10:
  - close with implementation-ready and transition-ready memos

bundle_strategy:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure

guardrails:
- additive only
- do not rewrite other app folders casually
- do not jump into implementation before payload and row-family clarity
- do not keep making micro-memos after the footing becomes stable
- keep audit separate from mutation planning
