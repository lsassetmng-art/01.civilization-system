# ============================================================
# READINESS THRESHOLD DEFAULTS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

threshold_profiles:

- threshold_profile_name: strict_full_generation
  completeness_min: 90
  granularity_min: 85
  ambiguity_max: 10
  dependency_resolution_min: 85
  reuse_readiness_min: 60
  connection_readiness_min: 70
  output_readiness_min: 85
  decision_target: full_ready

- threshold_profile_name: warning_allowed_generation
  completeness_min: 75
  granularity_min: 70
  ambiguity_max: 25
  dependency_resolution_min: 65
  reuse_readiness_min: 40
  connection_readiness_min: 50
  output_readiness_min: 70
  decision_target: full_ready_with_warning

- threshold_profile_name: manual_required_baseline
  completeness_min: 55
  granularity_min: 50
  ambiguity_max: 45
  dependency_resolution_min: 45
  reuse_readiness_min: 0
  connection_readiness_min: 0
  output_readiness_min: 50
  decision_target: manual_required

blocked_conditions:
- completeness_below_55
- granularity_below_50
- ambiguity_above_45
- critical_dependency_unresolved
- required_output_target_missing
