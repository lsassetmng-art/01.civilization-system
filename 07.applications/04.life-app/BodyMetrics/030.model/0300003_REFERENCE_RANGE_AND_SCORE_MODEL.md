# ============================================================
# REFERENCE RANGE AND SCORE MODEL
# ============================================================

status: draft

reference_entities:
  - health_reference_range_master
  - health_measurement_condition_master
  - health_metric_semantics_master
  - health_reference_source_master

score_entities:
  - health_score_rule_master
  - health_score_snapshot
  - health_score_component_snapshot
  - average_comparison_snapshot

rules:
  - reference は user runtime data と混在させない
  - score は rule と snapshot を分ける
  - 参考範囲は source / version / checked_at を持つ
