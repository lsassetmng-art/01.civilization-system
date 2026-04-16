# ============================================================
# CIVILIZATION PORTAL SITE DEVELOPMENT OVERVIEW
# ============================================================

status: canonical-design
layer: development
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site の実装設計全体像を定義する文書である。

本書の目的は、
Portal Site の開発優先方針、
実装対象範囲、
フェーズ分解、
実装境界、
実装順序を固定し、
以後の実装作業が設計逸脱しないようにすることにある。

# ============================================================
# 2. 前提
# ============================================================

Portal Site は、
Civilization 全体の公開入口となる
Webサイト / Webアプリとして実装する。

Portal Site は次を担う。

- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- Web入口前段判定
- お知らせ表示
- ポータル運営管理

新規登録と認証の正本は CivilizationOS とする。  
OS間の直接リンクは禁止する。

# ============================================================
# 3. 開発優先方針
# ============================================================

Portal Site は開発先行対象とする。

先行開発の目的は、
各OS本体より先に、
Civilization 全体の入口、
認証導線、
OS Web入口制御、
ログイン後ランチャーを成立させることにある。

# ============================================================
# 4. 開発フェーズ
# ============================================================

- P0: Web基盤立ち上げ
- P1: 公開ページ先行実装
- P2: 認証導線実装
- P3: OS入口制御実装
- P4: マイランチャー最小実装
- P5: お知らせ / メンテ強化
- P6: 管理画面最小実装
- P7: 管理 / 運用完成化

一次完了ラインは P4 完了時点とする。

# ============================================================
# 5. 実装設計文書
# ============================================================

本 layer では次の文書を扱う。

- 1300000_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_OVERVIEW.md
- 1300001_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_INDEX.md
- 1300002_CIVILIZATION_PORTAL_SITE_PHASE_P0_WEB_FOUNDATION_IMPLEMENTATION_DESIGN.md
- 1300003_CIVILIZATION_PORTAL_SITE_PHASE_P1_PUBLIC_PAGES_IMPLEMENTATION_DESIGN.md
- 1300004_CIVILIZATION_PORTAL_SITE_PHASE_P2_AUTH_ENTRY_IMPLEMENTATION_DESIGN.md
- 1300005_CIVILIZATION_PORTAL_SITE_PHASE_P3_OS_ENTRY_DECISION_IMPLEMENTATION_DESIGN.md
- 1300006_CIVILIZATION_PORTAL_SITE_PHASE_P4_LAUNCHER_IMPLEMENTATION_DESIGN.md
- 1300007_CIVILIZATION_PORTAL_SITE_DIRECTORY_AND_FILE_STRUCTURE_IMPLEMENTATION_DESIGN.md

# ============================================================
# 6. 現在状態
# ============================================================

本 layer は実装設計文書であり、
実装そのものではない。

現時点では、
設計書追加のみを行い、
実コード作成はまだ開始しない。
