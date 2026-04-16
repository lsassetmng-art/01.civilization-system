
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH SECURITY SAFETY OVERVIEW
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
layer: 100.security
owner: Boss
prepared_by: Zero

security_topics:
  - 健康関連データの最小共有
  - 同期時の保護
  - ローカル保存時の保護
  - 課金状態の正当判定

safety_topics:
  - 痛み・異常時の実施中断導線
  - 高負荷提案の保守的抑制
  - 安全注意文言の固定表示
