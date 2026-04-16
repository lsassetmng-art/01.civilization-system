# ============================================================
# GENERATION READINESS ASSESSMENT MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines the assessment result used to decide auto-generation or manual routing.

definition:
generation_readiness_assessment represents the evaluated readiness
of a design input or imported design set for generation.

minimum_fields:
- readiness_assessment_id
- request_id
- assessed_target_type
- completeness_score
- granularity_score
- ambiguity_score
- dependency_resolution_score
- reuse_readiness_score
- connection_readiness_score
- output_readiness_score
- overall_decision
- warning_count
- blocking_count
- assessed_at
- created_at
- updated_at

overall_decision_examples:
- full_ready
- full_ready_with_warning
- manual_required
- blocked

relations:
- links to generation_readiness_score
- links to generation_gap_record
- links to ambiguity_record
- links to missing_spec_record
- links to generation_mode_decision

notes:
This model is critical for imported design document handling.
