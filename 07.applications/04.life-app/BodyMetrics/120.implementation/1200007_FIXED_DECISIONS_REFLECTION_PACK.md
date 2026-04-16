# ============================================================
# FIXED DECISIONS REFLECTION PACK
# ============================================================

status: fixed

purpose:
  - BodyMetrics の未決事項を全て fixed decisions として閉じる
  - 以後は change request 方式で扱う
  - 実装前の設計基準を一意化する

fixed_now:
  - runtime schema = life
  - fixed knowledge side = CX22073
  - biometric_record / raw / normalized は分離
  - average_comparison_snapshot は保存
  - health_score_snapshot は保存
  - sleep は起床日基準
  - blood_pressure timing は標準化
  - missing day は補完しない
  - code columns は text + master contract
  - DB enum は採用しない
  - selective FK
  - soft delete 全表採用はしない
  - health score は日次更新 / 週次重視
  - initial release に blood pressure component を含む
  - external population average は初期搭載しない
  - initial release で reference range を含む
  - Family Care recipient limit = 5
  - export permission は閲覧権限と分離
  - Samsung はまず Health Connect 優先
  - PC / tablet は three-zone layout

implementation_boundary:
  - 本反映は設計のみ
  - SQL 作成はまだしない
  - API 実装はまだしない
  - 画面実装はまだしない

future_change_policy:
  - ここに書かれた内容は未決ではなく固定事項として扱う
  - 後続変更は差分要求として管理する
