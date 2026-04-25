# ============================================================
# STREAMING OS POST START DEVIATION CONTROL RULE
# ============================================================

status: canonical-rule
layer: meta
domain: implementation-start-execution-support-and-post-start-governance-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

deviation_classes:
- class_01_note_only_safe_deviation
- class_02_non_structural_document_deviation
- class_03_structural_design_deviation
- class_04_persona_boundary_deviation
- class_05_invariant_break_risk

rule:
- safe note-only deviation may proceed without reopening design meaning
- non-structural document deviation may proceed only if it does not alter approved meaning
- structural design deviation requires controlled redesign decision
- persona-boundary deviation requires targeted correction and may invalidate execution support
- invariant-break risk requires immediate escalation

forbidden:
- silent structural deviation after implementation-start support entry
- treating ownership/model deviation as wording-only cleanup
