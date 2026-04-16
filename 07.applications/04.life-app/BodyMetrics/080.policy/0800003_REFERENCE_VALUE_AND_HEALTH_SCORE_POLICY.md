# ============================================================
# REFERENCE VALUE AND HEALTH SCORE POLICY
# ============================================================

status: draft

reference_policy:
  - 正常値と断定せず reference range / reference average と表記する
  - 単一の universal healthy value を前提にしない
  - age band / sex / condition を考慮可能設計とする
  - source / version / checked_at を保持する

health_score_policy:
  - 健康スコアは lifestyle tendency score とする
  - total と component breakdown を表示する
  - score movement explanation を持つ
  - score 由来の disease claim を禁止する
