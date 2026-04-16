# ============================================================
# PORTAL AND SCENARIO FINAL HANDOFF NOTE
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
portal と scenario に限定した設計・DDL・seed・apply-ready v1 bundle の状態を
別チャットまたは次工程へ引き継ぐための最終ノートである。

# ============================================================
# 2. 対象範囲
# ============================================================

この引き継ぎノートの対象は次の2 schema のみとする。

- portal
- scenario

対象外:
- CX22073JW 詳細設計
- 知識基盤側の DDL / seed 詳細
- caller / scope の詳細設計本文

# ============================================================
# 3. portal の責務
# ============================================================

portal:
- 入口
- 表示
- 文言
- 階層ナビ
- AIヘルプデスク入口UI
- page section 構成

主要テーブル:
- portal.copy_text
- portal.nav_node
- portal.nav_node_target
- portal.helpdesk_entry
- portal.page_section
- portal.page_section_item

# ============================================================
# 4. scenario の責務
# ============================================================

scenario:
- シナリオ再生正本
- scenario / version / chapter / scene
- choice / branch / trigger
- playback profile
- progress rule
- scene と人物 / イベント / アセットの参照

主要テーブル:
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
# 5. 重要原則
# ============================================================

- portal は knowledge body を持たない
- portal は scenario 本文を持たない
- scenario は再生構造正本
- scenario は人物本文や知識本文を複製しない
- portal は入口と表示を担う
- scenario は再生・分岐・進行を担う

# ============================================================
# 6. 生成済み主要ファイル
# ============================================================

設計統合版:
- ../120.implementation-ready/120026_SCENARIO_SCHEMA_ONE_BLOCK_INTEGRATED_DESIGN.md
- ../120.implementation-ready/120027_PORTAL_SCHEMA_ONE_BLOCK_INTEGRATED_DESIGN.md

DDL draft:
- ../120.implementation-ready/120028_PORTAL_SCHEMA_DDL_DRAFT_PORTAL_ONLY.sql
- ../120.implementation-ready/120029_SCENARIO_SCHEMA_DDL_DRAFT_SCENARIO_ONLY.sql

seed draft:
- ../120.implementation-ready/120030_PORTAL_INITIAL_SEED_DRAFT_PORTAL_ONLY.sql
- ../120.implementation-ready/120031_SCENARIO_INITIAL_SEED_DRAFT_SCENARIO_ONLY.sql

apply-ready v1 bundle:
- ../140.apply-ready-v1-portal-scenario/000_APPLY_READY_V1_PORTAL_SCENARIO_README.md
- ../140.apply-ready-v1-portal-scenario/001_PORTAL_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/002_SCENARIO_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/003_PORTAL_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/004_SCENARIO_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/010_APPLY_READY_V1_PORTAL_SCENARIO_EXECUTION_BLOCK.sh

# ============================================================
# 7. DB 実行前提
# ============================================================

Persona / Civilization 側 DB 接続環境変数:
- PERSONA_DATABASE_URL

この段階では、
自動実行はしていない。

# ============================================================
# 8. apply-ready v1 適用順
# ============================================================

1. 001_PORTAL_APPLY_READY_V1.sql
2. 002_SCENARIO_APPLY_READY_V1.sql
3. 003_PORTAL_SEED_READY_V1.sql
4. 004_SCENARIO_SEED_READY_V1.sql

# ============================================================
# 9. 現在状態
# ============================================================

整備済み:
- portal 設計
- scenario 設計
- portal DDL draft
- scenario DDL draft
- portal seed draft
- scenario seed draft
- portal/scenario apply-ready v1 bundle

未実施:
- 実DB適用
- seed投入
- 本番運用投入
- scenario 実データ拡張
- Portal 実画面への本接続

# ============================================================
# 10. 次工程候補
# ============================================================

- apply-ready v1 の実行判断
- portal 実装画面との接続
- scenario 再生UIとの接続
- scenario seed の拡充
- portal nav tree の詳細化
