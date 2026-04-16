# ============================================================
# CIVILIZATION PORTAL SITE AND CX22073JW DESIGN FIXED SUMMARY
# ============================================================

status: draft-fixed-summary
layer: meta
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 全体方針
# ============================================================

Civilization 全体は、
設計正本と実装正本を分離する。

設計正本:
- 01.civilization-system

Portal Site 設計正本:
- 01.civilization-system/08.civilization-portal-site

実装正本:
- 03.civilization-development

Portal Site Web 実装正本:
- 03.civilization-development/civilization-portal-site-web

# ============================================================
# 2. Portal Site の役割
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開入口となる公式Webポータルである。

Portal Site は次を担う。

- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- 公開情報提供
- ポータル運営管理
- 全アプリ共通ヘルプデスク入口

新規登録と認証の正本は CivilizationOS とする。  
OS間の直接リンクは禁止する。

# ============================================================
# 3. Portal Site の仕様変更固定
# ============================================================

追加仕様は次の通りとする。

- すべてのアプリのヘルプデスクとして、AIチャット入口をトップ画面に設ける
- ページ文言は DB から取得して表示する
- アプリ一覧は階層表示とし、DB を使った動的表示にする

# ============================================================
# 4. Portal Site の DB責務
# ============================================================

portal schema は、
入口面と表示面を担う。

portal schema の責務:
- ページ文言
- ナビ階層
- 遷移先定義
- AIヘルプデスク入口
- ページセクション構成

Portal 側の基本テーブル:
- portal.copy_text
- portal.nav_node
- portal.nav_node_target
- portal.helpdesk_entry
- portal.page_section
- portal.page_section_item

# ============================================================
# 5. 共通知識基盤
# ============================================================

Civilization 全体の共通知識基盤 schema 名は
CX22073JW とする。

CX22073JW は、
Portal Site だけでなく、
各OS・各アプリ・相談系・学習系・BusinessOS AI worker を含む
共通知識正本である。

# ============================================================
# 6. CX22073JW の用途
# ============================================================

CX22073JW には次を格納する。

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

# ============================================================
# 7. CX22073JW の利用原則
# ============================================================

- 各アプリ / 各OS / Portal は caller として CX22073JW にアクセスする
- どの知識を使うかは scope 指定で決める
- Portal は入口と caller / scope 指定を担う
- CX22073JW は知識本文と知識構造の正本を担う
- 法律 / 医療は disclaimer / safety / style を分ける
- BusinessOS AI worker も CX22073JW を固定知識正本として利用する
- BusinessOS / ERP の変動データは CX22073JW に入れない

# ============================================================
# 8. BusinessOS AI worker の扱い
# ============================================================

BusinessOS AI worker も
CX22073JW を固定知識基盤として使う。

用途:
- 業務概念
- 用語定義
- 固定ルール
- 承認原則
- ワークフロー原則
- 帳票意味
- 基本手順
- ERP / BusinessOS の固定知識

入れないもの:
- 実トランザクション
- 現在の承認状態
- 現在の売上 / 在庫
- 現在の案件状態

固定知識は CX22073JW、変動データは BusinessOS / ERP 側とする。

# ============================================================
# 9. CX22073JW の中核構造
# ============================================================

最小中核:
- domain_master
- space_master
- scope_master
- article
- chunk
- faq
- caller_master
- caller_scope_binding
- route_policy
- disclaimer_master

フル採用追加:
- entity_master
- entity_alias
- relation_master
- article_entity_binding
- discipline_master
- topic_master
- article_discipline_binding
- article_topic_binding
- difficulty_profile_master
- audience_profile_master
- article_profile_binding
- space_summary
- scope_summary
- topic_summary
- prerequisite_relation
- learning_path
- learning_path_item
- source_master
- article_source
- review_status_master
- article_review_log
- timeline_event
- event_relation
- event_entity_binding
- retrieval_profile
- scope_retrieval_binding
- answer_style_profile
- response_template
- scope_style_binding
- session_log
- answer_source_log
- question_pattern
- knowledge_gap_log

# ============================================================
# 10. 学問知識の扱い
# ============================================================

学問知識も CX22073JW で統一管理する。

大分類例:
- academic

space 例:
- general_literacy
- physics_foundation
- quantum_mechanics
- mathematics_foundation
- economics_foundation
- philosophy_foundation

scope 例:
- general_literacy_basic
- physics_beginner
- quantum_mechanics_intro
- quantum_mechanics_advanced

出し分けは次で行う。
- discipline
- topic
- difficulty
- audience
- learning_path

# ============================================================
# 11. 歴史知識の扱い
# ============================================================

歴史知識は次を分ける。

- real_history
- civilization_history

両者を混ぜない。

timeline / event / entity binding により、
時間軸と人物 / 概念の結びつきを保持する。

# ============================================================
# 12. 人物知識の扱い
# ============================================================

登場人物知識は、
CX22073JW 側で「人物情報」として扱う。

人物情報は知識正本側に置き、
シナリオ内の再生順・分岐・登場制御とは分ける。

人物情報で持つべき内容:
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
- birth_year_precision
- death_year
- death_year_precision
- era_label
- life_status
- importance_level
- portrait_asset_id
- canonical_article_id
- public_status
- status
- created_at
- updated_at

特に固定済み:
- 所属国家コード
- 所属企業コード
- 年齢
- 生年
- 死亡年

# ============================================================
# 13. シナリオ再生基盤
# ============================================================

シナリオ再生正本は、
CX22073JW とは別 schema に分ける。

schema 名:
- scenario

# ============================================================
# 14. CX22073JW と scenario の責務分割
# ============================================================

CX22073JW:
- 世界観知識
- 歴史知識
- 学問知識
- FAQ
- 人物情報
- シナリオ解説知識
- シナリオ参照メタ
- AI が答えるための知識

scenario:
- シナリオ本体
- チャプター
- シーン
- 選択肢
- 分岐
- 再生順
- 進行条件
- トリガー
- ストーリーモード再生情報

原則:
- 質問に答えるための知識は CX22073JW
- 再生・分岐・進行の実行構造は scenario

# ============================================================
# 15. Portal と知識基盤の接続
# ============================================================

Portal Site のトップ画面には
全アプリ共通ヘルプデスクとして
AIチャット入口を表示する。

Portal は caller と requested_scope を指定し、
CX22073JW を参照する。

例:
- portal_site_top
- civilization_portal_support
- application_directory_support
- os_general_support

# ============================================================
# 16. 設計フェーズ到達状態
# ============================================================

ここまでで固定されたもの:

- Portal Site 概念設計
- Portal Site 詳細設計
- Portal Site 実装前仕様
- Portal Site 実装設計
- Portal DB の役割
- CX22073JW 共通知識基盤方針
- CX22073JW フル採用方針
- scenario 分離方針
- 人物情報方針
- BusinessOS AI worker 利用方針

# ============================================================
# 17. 現在状態
# ============================================================

現時点では、
ここまでを設計として固定する。

まだ未実施:
- CX22073JW full DDL
- scenario DDL
- seed 設計
- 実データ投入
- 本番実装連携
