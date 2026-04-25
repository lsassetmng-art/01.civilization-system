# ============================================================
# STATIC ART OS PERSONA REFERENCE FIRST ACTUALIZATION CANDIDATE SELECTION EXACT
# ============================================================

status: candidate-selection
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define which actualization candidates are valid first candidates and
which should not be first.

candidate_priority:
  candidate_1_PR_A01:
    status:
      - strongest_default_first_candidate
    reason:
      - locks scope before code-adjacent movement
      - prevents wasted authoring for unneeded packages
      - preserves no-more-redesign boundary while still moving forward

  candidate_2_control_plane_bootstrap_only:
    status:
      - valid_if_actualization_is_already_explicitly_approved
    reason:
      - useful only when authored blocks/runner artifacts are definitely next

  candidate_3_PR_A02_DB_enablement:
    status:
      - not_default_first_candidate
    reason:
      - too early unless PR-A01 already closed and DB scope explicitly approved

  candidate_4_PR_A03_reflection:
    status:
      - not_default_first_candidate
    reason:
      - depends on clearer scope and often on local schema decision

  candidate_5_PR_A04_to_PR_A07:
    status:
      - not_first_candidates
    reason:
      - later-package dependency and safety sequencing

first_candidate_selection_rule:
- default first candidate is PR-A01-B01 boundary/scope confirmation
- only skip PR-A01 if a prior approved scope-lock artifact already exists and is still valid
- if scope is no longer uncertain, first candidate may become control-plane bootstrap or package-specific authored block, but this should be explicit

selection_stop_signals:
- current scope unclear
- surface list unclear
- Persona reference may not be needed now
- frozen semantics appear to require reopening

selection_judgement:
- first candidate selection exists to minimize wrong early momentum
