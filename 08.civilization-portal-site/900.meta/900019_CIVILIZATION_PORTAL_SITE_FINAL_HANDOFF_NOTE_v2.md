# ============================================================
# CIVILIZATION PORTAL SITE FINAL HANDOFF NOTE v2
# ============================================================

status: canonical-design-support
layer: meta
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site 設計書群について、
portal schema / CX22073JW / scenario /
seed draft / 完全統合版 v2 まで含めた状態を
次工程または別チャットへ引き継ぐための
最終引き継ぎ文書である。

# ============================================================
# 2. 現在状態
# ============================================================

Civilization Portal Site 設計書群は、
現時点で次の状態にある。

- 概念設計済み
- 詳細設計済み
- 実装前仕様済み
- 実装設計済み
- portal schema 設計済み
- CX22073JW 共通知識基盤設計済み
- scenario 再生基盤設計済み
- DDL draft 生成済み
- initial seed draft 生成済み
- fully integrated all files v2 生成済み
- 実装未完了
- DDL未実行
- seed未投入
- 本番未投入

# ============================================================
# 3. ルート正本
# ============================================================

主要ルート文書は次の通りとする。

- 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
- 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

本文正本は次とする。

- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# 4. 完全統合版
# ============================================================

完全統合版は次の通りとする。

- ../00_CIVILIZATION_PORTAL_SITE_FULLY_INTEGRATED_ALL_FILES_v2.md
- ../00_CIVILIZATION_PORTAL_SITE_FULLY_INTEGRATED_ALL_FILES_v2_ORDER.txt

完全統合版 v2 は、
Portal Site 配下の全ファイル内容を
読み順付きで統合した補助成果物である。

# ============================================================
# 5. 主要 schema
# ============================================================

主要 schema は次の3つとする。

1. portal
2. CX22073JW
3. scenario

# ============================================================
# 6. schema ごとの責務
# ============================================================

portal:
- 入口
- 表示
- 文言
- 階層ナビ
- helpdesk 入口UI
- page section 構成

CX22073JW:
- Civilization 全体の共通知識正本
- app / os / academic / history / legal / medical / language / certification knowledge
- FAQ
- article / chunk
- caller / scope / routing
- 人物情報
- 学習導線
- 出典 / 監修
- 関係知識
- 回答スタイル
- 検索戦略
- 改善ログ

scenario:
- シナリオ再生正本
- scenario / version / chapter / scene / node / choice / branch / trigger
- playback structure
- progression rules

# ============================================================
# 7. 重要固定事項
# ============================================================

- Portal Site トップ画面に全アプリ共通 AIヘルプデスク入口を置く
- Portal のページ文言は DB 取得を正本とする
- Portal のアプリ / OS 一覧は DB 駆動階層表示を正本とする
- 知識本文は portal では持たず CX22073JW を正本とする
- BusinessOS AI worker も CX22073JW を固定知識基盤として使う
- BusinessOS / ERP の変動データは CX22073JW に入れない
- 登場人物知識は CX22073JW.character_profile を正本とする
- シナリオ再生は scenario を正本とする
- シナリオ側は人物情報を複製せず参照する

# ============================================================
# 8. 人物情報
# ============================================================

人物情報正本:
- CX22073JW.character_profile

固定項目の例:
- affiliation_country_code
- affiliation_company_code
- age
- birth_year
- death_year
- role_title
- occupation_code
- era_label
- canonical_article_id

# ============================================================
# 9. BusinessOS AI worker
# ============================================================

BusinessOS AI worker は、
CX22073JW を固定知識基盤として使う。

固定知識例:
- 業務概念
- 用語定義
- 固定ルール
- 承認原則
- ワークフロー原則
- 帳票意味
- 基本手順

変動データは、
BusinessOS / ERP 側を正本とする。

# ============================================================
# 10. DDL draft
# ============================================================

生成済み DDL draft の主要ファイル:

portal:
- ../120.implementation-ready/120019_PORTAL_SCHEMA_DDL_DRAFT.sql

CX22073JW:
- ../120.implementation-ready/120012_CX22073JW_CORE_AND_CHARACTER_PROFILE_DDL_DRAFT.sql

scenario:
- ../120.implementation-ready/120013_SCENARIO_CORE_DDL_DRAFT.sql

統合 shell:
- ../120.implementation-ready/120014_CX22073JW_AND_SCENARIO_INTEGRATED_DDL_DRAFT.sql

# ============================================================
# 11. seed draft
# ============================================================

生成済み seed draft の主要ファイル:

portal:
- ../120.implementation-ready/120022_PORTAL_INITIAL_SEED_DRAFT.sql

CX22073JW:
- ../120.implementation-ready/120023_CX22073JW_INITIAL_SEED_DRAFT.sql

適用順メモ:
- ../120.implementation-ready/120024_THREE_SCHEMA_INITIAL_SEED_ORDER_NOTE.md

# ============================================================
# 12. 推奨参照順
# ============================================================

1. 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
2. 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
3. 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
4. 000_CIVILIZATION_PORTAL_SITE_INDEX.md
5. 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md
6. 各 layer overview / index
7. 120.implementation-ready
8. 130.development
9. 900.meta
10. fully integrated all files v2

# ============================================================
# 13. 次工程候補
# ============================================================

次工程候補は次の通りとする。

- 共通部品台帳登録
- DDL draft レビュー
- seed draft レビュー
- Portal P0/P1 実装継続
- CX22073JW / portal / scenario の実行順確定
- 初期 seed の正式SQL化
- 実際の schema 作成と適用判断

# ============================================================
# 14. 最終記録
# ============================================================

Civilization Portal Site 設計書群は、
portal / CX22073JW / scenario /
DDL draft / seed draft / 完全統合版 v2 を含めて、
別チャットへ引き継ぎ可能な状態で整理済みである。

現時点では、
実DB適用・seed投入・本番投入はまだ行わない。
