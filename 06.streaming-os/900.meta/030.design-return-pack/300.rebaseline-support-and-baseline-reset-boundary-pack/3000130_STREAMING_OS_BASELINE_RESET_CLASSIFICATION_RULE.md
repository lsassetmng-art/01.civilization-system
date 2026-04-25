# ============================================================
# STREAMING OS BASELINE RESET CLASSIFICATION RULE
# ============================================================

status: canonical-rule
layer: meta
domain: rebaseline-support-and-baseline-reset-boundary-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

baseline_reset_classes:
- class_01_note_only_followup
- class_02_non_structural_additive_extension
- class_03_domain_scoped_redesign
- class_04_cross_domain_scoped_redesign
- class_05_rebaseline_candidate_change
- class_06_archive_ready_closure_candidate
- class_07_persona_boundary_sensitive_reset

rule:
- note-only followup may proceed without rebaseline support
- non-structural additive extension may proceed only if invariants stay intact
- domain-scoped redesign requires explicit affected-domain boundary
- cross-domain scoped redesign requires explicit affected-domain graph
- rebaseline-candidate change requires preserved history and bounded reset reasoning
- archive-ready-closure candidate requires preserved traceability and closure readiness
- persona-boundary-sensitive reset requires targeted boundary review before reset support

forbidden:
- silent baseline reset after steady-state approval
- treating ownership/model shifts as archive cleanup
