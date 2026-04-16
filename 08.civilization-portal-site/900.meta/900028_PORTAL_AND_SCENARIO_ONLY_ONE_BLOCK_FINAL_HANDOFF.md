# ============================================================
# PORTAL AND SCENARIO ONLY FINAL HANDOFF
# ワンブロック最終引き継ぎ版
# ============================================================

status: canonical-design-support
scope: portal + scenario only
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site 設計のうち、
portal と scenario だけに絞った内容を
別チャットまたは次工程へ
単独で引き継げるように整理した
最終引き継ぎ文書である。

本書では、
知識基盤詳細は扱わず、
次の2 schema だけを対象とする。

- portal
- scenario

# ============================================================
# 2. 対象範囲
# ============================================================

対象:
- portal schema 設計
- scenario schema 設計
- portal DDL draft
- scenario DDL draft
- portal initial seed draft
- scenario initial seed draft
- portal/scenario apply-ready v1 bundle
- portal/scenario only integrated file

対象外:
- CX22073JW 詳細設計
- 知識基盤のテーブル詳細
- caller / scope の知識側詳細
- 知識本文 / FAQ / article / chunk 詳細

# ============================================================
# 3. portal の位置づけ
# ============================================================

portal は、
Civilization Portal Site の
入口 / 表示 / ナビ / helpdesk UI の正本 schema である。

portal の責務:
- ページ文言
- DB駆動ナビ階層
- 遷移先定義
- AIヘルプデスク入口
- page section 構成
- section item 構成

portal は知識本文を持たない。
portal はシナリオ本文も持たない。

# ============================================================
# 4. portal の主要テーブル
# ============================================================

- portal.copy_text
- portal.nav_node
- portal.nav_node_target
- portal.helpdesk_entry
- portal.page_section
- portal.page_section_item

# ============================================================
# 5. portal の表示原則
# ============================================================

- 文言は copy_text を正本とする
- 一覧は nav_node を正本とする
- 遷移は nav_node_target を正本とする
- AI helpdesk 入口は helpdesk_entry を正本とする
- ページ構成は page_section / page_section_item を正本とする
- Portal 本体に埋め込まれた固定文言を正本扱いしない

# ============================================================
# 6. portal の初期構成
# ============================================================

初期 top page:
- hero
- ai_helpdesk
- app_tree

初期 root node:
- civilization_root
- os_root
- application_root
- helpdesk_root
- scenario_root

初期 helpdesk:
- portal_top_ai_helpdesk

初期 copy 例:
- top.hero.title
- top.hero.description
- top.ai_helpdesk.title
- top.ai_helpdesk.description
- top.ai_helpdesk.cta
- civilization.page.title
- civilization.page.description
- os.list.page.title
- os.list.page.description
- guide.page.title
- guide.page.description

# ============================================================
# 7. scenario の位置づけ
# ============================================================

scenario は、
ストーリーモードの再生 / 分岐 / 進行を担う
正本 schema である。

scenario の責務:
- シナリオ本体
- バージョン
- chapter / scene 構成
- choice による分岐
- branch rule による条件分岐
- trigger による発火
- playback profile
- progress rule
- scene と人物 / イベント / アセットの参照

scenario は、
知識本文や人物本文そのものの正本ではない。

# ============================================================
# 8. scenario の主要テーブル
# ============================================================

- scenario.scenario_master
- scenario.scenario_version
- scenario.scenario_chapter
- scenario.scenario_scene
- scenario.scenario_scene_node
- scenario.scenario_choice
- scenario.scenario_branch_rule
- scenario.scenario_trigger
- scenario.scenario_playback_profile
- scenario.scenario_character_binding
- scenario.scenario_event_binding
- scenario.scenario_asset_binding
- scenario.scenario_progress_rule

# ============================================================
# 9. scenario の進行原則
# ============================================================

基本進行は次で成立する。

- next_scene_code による直進
- scenario_choice による選択遷移
- scenario_branch_rule による条件分岐

補助制御:
- scenario_trigger
- scenario_progress_rule

原則:
- scene を再生単位の中心とする
- chapter は整理単位とする
- choice と branch を分ける
- 人物本文や lore 本文は複製しない
- scenario は必要な対象を参照する

# ============================================================
# 10. portal と scenario の境界
# ============================================================

portal:
- 入口
- 表示
- ナビ
- helpdesk UI
- scenario への導線表示はできる

scenario:
- 再生
- 分岐
- 進行
- 演出構造

原則:
- portal は scenario 本文を持たない
- portal は scenario 入口を案内するだけ
- scenario の再生制御は scenario schema 正本とする

# ============================================================
# 11. DDL draft
# ============================================================

生成済み DDL draft:

portal:
- ../120.implementation-ready/120028_PORTAL_SCHEMA_DDL_DRAFT_PORTAL_ONLY.sql

scenario:
- ../120.implementation-ready/120029_SCENARIO_SCHEMA_DDL_DRAFT_SCENARIO_ONLY.sql

# ============================================================
# 12. seed draft
# ============================================================

生成済み seed draft:

portal:
- ../120.implementation-ready/120030_PORTAL_INITIAL_SEED_DRAFT_PORTAL_ONLY.sql

scenario:
- ../120.implementation-ready/120031_SCENARIO_INITIAL_SEED_DRAFT_SCENARIO_ONLY.sql

# ============================================================
# 13. apply-ready v1 bundle
# ============================================================

生成済み apply-ready v1 bundle:

- ../140.apply-ready-v1-portal-scenario/000_APPLY_READY_V1_PORTAL_SCENARIO_README.md
- ../140.apply-ready-v1-portal-scenario/001_PORTAL_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/002_SCENARIO_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/003_PORTAL_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/004_SCENARIO_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/010_APPLY_READY_V1_PORTAL_SCENARIO_EXECUTION_BLOCK.sh

# ============================================================
# 14. DB 実行前提
# ============================================================

Persona / Civilization 側 DB 接続環境変数:
- PERSONA_DATABASE_URL

この段階では、
自動実行はしていない。

# ============================================================
# 15. 適用順
# ============================================================

推奨適用順:
1. portal apply-ready v1
2. scenario apply-ready v1
3. portal seed-ready v1
4. scenario seed-ready v1

# ============================================================
# 16. portal/scenario only 統合版
# ============================================================

生成済み統合版:
- ../00_PORTAL_AND_SCENARIO_ONLY_FULLY_INTEGRATED.md
- ../00_PORTAL_AND_SCENARIO_ONLY_FULLY_INTEGRATED_ORDER.txt

これは、
portal / scenario 関連ファイルだけをまとめた
読順付き統合版である。

# ============================================================
# 17. 現在状態
# ============================================================

整備済み:
- portal 設計
- scenario 設計
- portal DDL draft
- scenario DDL draft
- portal initial seed draft
- scenario initial seed draft
- portal/scenario apply-ready v1 bundle
- portal/scenario only 統合版
- portal/scenario only final check

未実施:
- 実DB適用
- seed投入
- Portal 実画面との本接続
- scenario 再生UIとの本接続
- scenario 実データの増強

# ============================================================
# 18. 次工程候補
# ============================================================

- portal apply-ready v1 実行判断
- scenario apply-ready v1 実行判断
- portal 実装画面接続
- scenario 再生UI接続
- scenario seed 拡張
- portal nav tree 詳細化
- scenario scene / branch 詳細化

# ============================================================
# 19. 最終結論
# ============================================================

portal は、
Civilization Portal Site の
入口 / 表示 / ナビ / helpdesk UI を担う
専用正本 schema として固定する。

scenario は、
ストーリーモードの
再生 / 分岐 / 進行を担う
専用正本 schema として固定する。

この2 schema は、
知識基盤詳細を切り離した状態でも、
単独で別チャットへ引き継ぎ可能なレベルまで整理済みである。
