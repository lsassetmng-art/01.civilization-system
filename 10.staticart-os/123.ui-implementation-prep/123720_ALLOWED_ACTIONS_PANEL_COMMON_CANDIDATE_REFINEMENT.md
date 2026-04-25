# ============================================================
# ALLOWED ACTIONS PANEL COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for AllowedActionsPanel
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- still close to app-specific action families
- needs broader abstraction before promotion

refined_candidate_intent:
- treat Allowed Actions Panel Common as a reusable capability-driven action-summary family
- keep action decision logic outside the common boundary

candidate_should_own:
- render allowed action list
- render unavailable action list with reason summary
- expose grouped action visibility
- expose action panel summary state

candidate_should_not_own:
- permission engine logic
- business workflow decisions
- confirmation flow ownership
- StaticArtOS-specific action wording
- feature-specific CTA behavior

reuse_scope_if_promoted:
- governance-aware apps
- admin surfaces
- detail surfaces with capability-driven action sets
- review or workflow summary panels

required_future_evidence:
- second consumer for generic action-summary rendering
- cleaner split from ActionButton primitive and feature-specific action surfaces
- stable action-summary contract

recommended_relation_check:
- ActionButton
- permission guard base
- Review Queue Common
- Product Detail Summary Common

refinement_judgment:
- candidate remains later-wave
- abstraction is clearer
- promotion-design should wait for broader reuse evidence
