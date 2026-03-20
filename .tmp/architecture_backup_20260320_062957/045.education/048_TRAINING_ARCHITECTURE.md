# ============================================================
# TRAINING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Training is structured learning that grants skill through completion.

training_types:
- school_training
- paid_training
- certification_prep_training
- company_prep_training

outputs:
- training_completion
- skill_gain_request
- readiness_increase

rules:
- training completion must be explicit
- skill gain from training must record source_type = TRAINING
- training may improve readiness without altering official results directly
- paid training must route through economy purchase flow if monetized

event_flow:
- training_started
- training_progress_recorded
- training_completed
- skill_gain_requested
- skill_gain_applied

constitution_alignment:
- explicit completion
- no hidden skill grant
- auditable source lineage

final_rule:
Training must produce explicit, source-traceable skill outcomes.
