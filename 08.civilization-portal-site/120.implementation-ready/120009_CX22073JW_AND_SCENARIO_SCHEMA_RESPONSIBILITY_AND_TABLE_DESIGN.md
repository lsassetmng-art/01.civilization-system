# ============================================================
# CX22073JW AND SCENARIO
# SCHEMA RESPONSIBILITY AND TABLE DESIGN
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
CX22073JW と scenario の責務分割と、
各 schema の正式テーブル設計対象を定義する文書である。

# ============================================================
# 2. schema 分割方針
# ============================================================

CX22073JW:
- AI が答えるための知識正本
- 世界観知識
- 歴史知識
- 学問知識
- FAQ
- 人物情報
- シナリオ解説知識
- シナリオ参照メタ

scenario:
- シナリオ再生正本
- チャプター
- シーン
- 選択肢
- 分岐
- 再生順
- 進行条件
- トリガー
- ストーリーモード再生情報

# ============================================================
# 3. CX22073JW 主要テーブル
# ============================================================

中核:
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

拡張:
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
- character_profile

# ============================================================
# 4. scenario 主要テーブル
# ============================================================

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

# ============================================================
# 5. schema 間の接続
# ============================================================

CX22073JW は、
人物・歴史・概念・シナリオ解説知識を持つ。

scenario は、
再生構造を持つ。

接続例:
- scenario_master.canonical_article_id -> CX22073JW.article.article_id
- scenario_character_binding.character_entity_id -> CX22073JW.entity_master.entity_id
- scenario_event_binding.timeline_event_id -> CX22073JW.timeline_event.timeline_event_id

# ============================================================
# 6. 原則
# ============================================================

- 知識は CX22073JW
- 再生は scenario
- 人物は CX22073JW.character_profile を正本とする
- シナリオは人物情報を複製せず参照する
