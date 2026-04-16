# ============================================================
# PORTAL / CX22073JW / SCENARIO
# THREE SCHEMA INTEGRATED SUMMARY
# ============================================================

status: draft-additive
layer: implementation-ready
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Portal Site で利用する
3つの主要 schema
- portal
- CX22073JW
- scenario
の責務分割と接続原則を
統合的に整理する文書である。

# ============================================================
# 2. 全体構造
# ============================================================

portal:
- 入口面
- 表示面
- ナビ面
- helpdesk 入口UI
- DB駆動文言
- DB駆動階層表示

CX22073JW:
- Civilization 全体の共通知識正本
- app / os / academic / history / legal / medical / language / certification knowledge
- FAQ
- article / chunk
- caller / scope / route policy
- 人物情報
- 学習導線
- 出典 / 監修
- 関係知識
- 回答スタイル
- 検索戦略

scenario:
- ストーリーモード再生正本
- scenario / chapter / scene / choice / branch
- trigger
- playback structure
- progression rules

# ============================================================
# 3. portal schema の責務
# ============================================================

portal schema は、
Portal Site 表示そのものの正本を担う。

対象:
- copy_text
- nav_node
- nav_node_target
- helpdesk_entry
- page_section
- page_section_item

役割:
- トップ画面文言
- AI helpdesk 入口表示
- アプリ / OS / group の階層表示
- ページの section 構成
- 遷移先解決

portal は知識本文を持たない。

# ============================================================
# 4. CX22073JW の責務
# ============================================================

CX22073JW は、
Civilization 全体の共通知識基盤である。

対象:
- アプリ知識
- OS知識
- 資格知識
- 言語知識
- 学問知識
- 現実の歴史
- Civilization の歴史
- 法律知識
- 医療知識
- FAQ
- 学習導線
- 出典 / 監修 / 信頼性
- 関係知識
- 回答スタイル
- 検索戦略
- 改善ログ
- 人物情報

CX22073JW は、
Portal / OS / application / worker / consultation app から
caller_code と requested_scope を受けて
知識を返す。

# ============================================================
# 5. scenario の責務
# ============================================================

scenario は、
ストーリーモードの再生構造を正本として持つ。

対象:
- scenario_master
- scenario_version
- scenario_chapter
- scenario_scene
- scenario_scene_node
- scenario_choice
- scenario_branch_rule
- scenario_trigger
- scenario_playback_profile
- scenario_character_binding
- scenario_event_binding
- scenario_asset_binding
- scenario_progress_rule

scenario は、
知識本文ではなく、
再生・分岐・進行・演出の構造を担う。

# ============================================================
# 6. schema 間の接続
# ============================================================

portal -> CX22073JW:
- Portal の AI helpdesk 入口から caller / scope 指定で接続する

portal -> scenario:
- 直接再生UIを持つ場合は scenario entry に接続する
- ただし lore / 人物 / 歴史説明は CX22073JW を参照する

scenario -> CX22073JW:
- canonical_article_id を通じた scenario 解説参照
- character_entity_id を通じた人物情報参照
- timeline_event_id を通じた歴史イベント参照

# ============================================================
# 7. 人物情報の正本
# ============================================================

人物情報の正本は
CX22073JW.character_profile とする。

人物情報で持つ内容:
- 人物コード
- 表示名
- 正式名
- short_bio
- character_type
- origin_type
- gender_code
- species_type
- role_title
- occupation_code
- affiliation_country_code
- affiliation_company_code
- affiliation_org_code
- rank_or_position
- age
- birth_year
- death_year
- era_label
- canonical_article_id

scenario は、
人物情報を複製せず、
人物参照だけを持つ。

# ============================================================
# 8. BusinessOS AI worker との関係
# ============================================================

BusinessOS AI worker も
CX22073JW を固定知識基盤として使う。

固定知識:
- 概念
- 原則
- 用語
- 業務ルール
- 手順
- 基本説明

変動データ:
- BusinessOS / ERP 側

つまり、
固定知識は CX22073JW、
変動実データは業務DB側とする。

# ============================================================
# 9. 代表的な利用フロー
# ============================================================

Portal top helpdesk:
1. portal.helpdesk_entry を表示
2. caller_code = portal_site_top
3. requested_scope = portal_top_helpdesk_default
4. CX22073JW から FAQ / article / chunk を取得
5. answer_style / disclaimer を適用して表示

OS helpdesk:
1. Portal または OS 画面から caller_code を決定
2. requested_scope = persona_os_basic など
3. CX22073JW を参照

Story mode:
1. scenario で scenario を再生
2. 必要に応じて character / lore / event 解説は CX22073JW を参照

# ============================================================
# 10. 原則
# ============================================================

- 入口は portal
- 知識は CX22073JW
- 再生は scenario
- 人物情報は CX22073JW 正本
- シナリオは人物や lore を複製しない
- Portal は knowledge body を持たない
- Worker の固定知識も CX22073JW を使う
