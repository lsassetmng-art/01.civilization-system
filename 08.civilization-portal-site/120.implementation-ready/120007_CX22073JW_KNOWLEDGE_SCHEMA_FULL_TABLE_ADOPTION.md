# ============================================================
# CX22073JW KNOWLEDGE SCHEMA FULL TABLE ADOPTION
# ============================================================

status: draft-additive
layer: implementation-ready
schema: CX22073JW
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
CX22073JW schema を Civilization 全体の共通知識基盤として
フル採用する前提で、
採用対象テーブル一覧を固定する文書である。

# ============================================================
# 2. フル採用方針
# ============================================================

CX22073JW は次を保持する。

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
- 関係知識
- 出典 / 監修 / 信頼性
- 回答スタイル
- 検索戦略
- 改善ログ

# ============================================================
# 3. 採用テーブル一覧
# ============================================================

## 3.1 中核
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

## 3.2 関係知識
- entity_master
- entity_alias
- relation_master
- article_entity_binding

## 3.3 学問分類
- discipline_master
- topic_master
- article_discipline_binding
- article_topic_binding

## 3.4 難易度 / 対象者
- difficulty_profile_master
- audience_profile_master
- article_profile_binding

## 3.5 要約
- space_summary
- scope_summary
- topic_summary

## 3.6 学習導線
- prerequisite_relation
- learning_path
- learning_path_item

## 3.7 出典 / 監修
- source_master
- article_source
- review_status_master
- article_review_log

## 3.8 時系列 / 歴史
- timeline_event
- event_relation
- event_entity_binding

## 3.9 検索戦略
- retrieval_profile
- scope_retrieval_binding

## 3.10 回答スタイル
- answer_style_profile
- response_template
- scope_style_binding

## 3.11 改善 / 分析
- session_log
- answer_source_log
- question_pattern
- knowledge_gap_log

# ============================================================
# 4. Portal との関係
# ============================================================

portal schema:
- 入口
- 文言
- 階層表示
- helpdesk 入口
- ページ構成

CX22073JW schema:
- 知識本文
- FAQ
- chunk
- scope / routing
- entity / relation
- learning / history / academic / legal / medical knowledge

# ============================================================
# 5. 原則
# ============================================================

- 呼び出し元は caller_code を持つ
- 参照範囲は scope 指定で決める
- Portal は入口と caller / scope 指定を担う
- CX22073JW は知識本体を担う
- 法律 / 医療は disclaimer / policy / style を分ける
