
# MealPlanner Architecture

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## レイヤー構造
- 010.constitution: 原則 / 境界
- 020.architecture: 構造 / 依存
- 030.model: データ意味
- 040.runtime: 実行時挙動
- 050.flow: 利用 / 公開 / 出力フロー
- 060.integration: 外部連携
- 070.operations: 運用
- 080.policy: 課金 / 公開 / 取扱方針
- 090.interface: UI / CSV出力
- 100.security: 権限 / private/public 境界
- 110.infrastructure: 実行基盤
- 120.implementation: 実装境界
- 130.development: 開発計画
- 900.meta: メタ情報

## 構造方針
- app単体でMVP開始可能
- 後から共通部品差し替え可能
- 共通部品詳細は別チャット管理
- MealPlanner 側では依存前提のみ保持
