# Runtime Detail Overview

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。



app: CareerLaunch
layer: 040.runtime
## Purpose
ドラフト保存、同期、通知、面接前後の実行時挙動を定義する。

## Coverage
- ドラフト保存
- 同期
- 通知
- 失敗時挙動
- 端末差分

## Design stance
CareerLaunch は 転職応募実行アシスタント として、求人票貼り付け方式、life スキーマ、マルチプラットフォーム、オフライン下書き、ペルソナ/背景表示を前提にする。
