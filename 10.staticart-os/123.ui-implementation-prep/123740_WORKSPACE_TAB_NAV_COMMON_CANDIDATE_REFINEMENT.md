# ============================================================
# WORKSPACE TAB NAV COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for WorkspaceTabNav
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- useful multi-step editor shell
- still too editor-shaped without broader reuse evidence

refined_candidate_intent:
- treat Workspace Tab Nav Common as a reusable multi-section workspace navigation family
- keep editor-specific orchestration outside the common boundary

candidate_should_own:
- tab/section navigation
- active-section summary
- section-level completion indicator hooks
- section-switch interaction hooks

candidate_should_not_own:
- editor workflow decisions
- save orchestration
- StaticArtOS-specific workspace wording
- feature-specific validation rules

reuse_scope_if_promoted:
- multi-step editors
- multi-section admin workspaces
- structured workspace applications
- creator/project workspaces

required_future_evidence:
- second consumer for generic workspace section navigation
- clearer split from generic tab navigation and feature workflow orchestration
- stable section-state contract

recommended_relation_check:
- ScreenShell
- Asset Metadata Editor Common
- ReviewDecisionPanel

refinement_judgment:
- candidate remains later-wave
- abstraction is clearer
- promotion-design should wait for broader reuse evidence
