# ============================================================
# CX22073JW KNOWLEDGE SCHEMA FULL EXACT COLUMN DEFINITION
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
CX22073JW schema のフル採用版テーブル群について、
exact column 定義を固定する文書である。

# ============================================================
# 2. 共通原則
# ============================================================

- 主キーは原則 uuid
- *_code は原則 text
- status / publish_status / visibility_status は text
- sort_order / priority_no は integer
- created_at / updated_at は timestamptz not null
- 必要に応じて effective_from / effective_to を使う

# ============================================================
# 3. 中核テーブル
# ============================================================

## 3.1 CX22073JW.domain_master
- domain_id uuid not null
- domain_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- domain_code

## 3.2 CX22073JW.space_master
- space_id uuid not null
- domain_id uuid not null
- space_code text not null
- display_name text not null
- description text null
- locale_code text null
- default_answer_style_profile_code text null
- default_safety_policy_profile_code text null
- publish_status text not null
- status text not null
- sort_order integer not null default 0
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- domain_id -> domain_master.domain_id
unique:
- space_code

## 3.3 CX22073JW.scope_master
- scope_id uuid not null
- space_id uuid not null
- scope_code text not null
- display_name text not null
- description text null
- scope_level text not null
- query_hint text null
- is_default boolean not null default false
- publish_status text not null
- status text not null
- sort_order integer not null default 0
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- space_id -> space_master.space_id
unique:
- scope_code

## 3.4 CX22073JW.article
- article_id uuid not null
- space_id uuid not null
- article_code text not null
- article_type text not null
- title text not null
- summary text null
- body_markdown text not null
- locale_code text null
- source_kind text null
- trust_level text null
- publish_status text not null
- visibility_status text not null
- effective_from timestamptz null
- effective_to timestamptz null
- version_no integer not null default 1
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- space_id -> space_master.space_id
unique:
- article_code

## 3.5 CX22073JW.chunk
- chunk_id uuid not null
- article_id uuid not null
- chunk_no integer not null
- chunk_title text null
- chunk_text text not null
- chunk_summary text null
- token_estimate integer null
- embedding_status text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
unique:
- (article_id, chunk_no)

## 3.6 CX22073JW.faq
- faq_id uuid not null
- space_id uuid not null
- faq_code text not null
- question_text text not null
- short_answer_text text not null
- long_answer_article_id uuid null
- locale_code text null
- priority_no integer not null default 0
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- space_id -> space_master.space_id
- long_answer_article_id -> article.article_id
unique:
- faq_code

## 3.7 CX22073JW.caller_master
- caller_id uuid not null
- caller_code text not null
- caller_type text not null
- display_name text not null
- description text null
- owner_domain_code text null
- owner_target_code text null
- default_space_code text null
- default_scope_code text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- caller_code

## 3.8 CX22073JW.caller_scope_binding
- caller_scope_binding_id uuid not null
- caller_id uuid not null
- scope_id uuid not null
- is_default boolean not null default false
- priority_no integer not null default 0
- access_mode text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- caller_id -> caller_master.caller_id
- scope_id -> scope_master.scope_id
unique:
- (caller_id, scope_id)

## 3.9 CX22073JW.route_policy
- route_policy_id uuid not null
- route_policy_code text not null
- caller_id uuid not null
- primary_scope_id uuid null
- fallback_scope_id uuid null
- answer_style_profile_code text null
- safety_policy_profile_code text null
- disclaimer_code text null
- escalation_required boolean not null default false
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- caller_id -> caller_master.caller_id
- primary_scope_id -> scope_master.scope_id
- fallback_scope_id -> scope_master.scope_id
unique:
- route_policy_code
- caller_id

## 3.10 CX22073JW.disclaimer_master
- disclaimer_id uuid not null
- disclaimer_code text not null
- display_name text not null
- body_text text not null
- locale_code text null
- disclaimer_type text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- disclaimer_code

# ============================================================
# 4. 関係知識
# ============================================================

## 4.1 CX22073JW.entity_master
- entity_id uuid not null
- entity_code text not null
- entity_type text not null
- display_name text not null
- summary text null
- canonical_article_id uuid null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- canonical_article_id -> article.article_id
unique:
- entity_code

## 4.2 CX22073JW.entity_alias
- entity_alias_id uuid not null
- entity_id uuid not null
- alias_text text not null
- locale_code text null
- is_primary boolean not null default false
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- entity_id -> entity_master.entity_id

## 4.3 CX22073JW.relation_master
- relation_id uuid not null
- relation_code text not null
- from_entity_id uuid not null
- to_entity_id uuid not null
- relation_type text not null
- description text null
- weight numeric null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- from_entity_id -> entity_master.entity_id
- to_entity_id -> entity_master.entity_id
unique:
- relation_code

## 4.4 CX22073JW.article_entity_binding
- article_entity_binding_id uuid not null
- article_id uuid not null
- entity_id uuid not null
- binding_role text not null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- entity_id -> entity_master.entity_id
unique:
- (article_id, entity_id, binding_role)

# ============================================================
# 5. 学問分類
# ============================================================

## 5.1 CX22073JW.discipline_master
- discipline_id uuid not null
- discipline_code text not null
- display_name text not null
- description text null
- parent_discipline_id uuid null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- parent_discipline_id -> discipline_master.discipline_id
unique:
- discipline_code

## 5.2 CX22073JW.topic_master
- topic_id uuid not null
- discipline_id uuid not null
- topic_code text not null
- display_name text not null
- description text null
- parent_topic_id uuid null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- discipline_id -> discipline_master.discipline_id
- parent_topic_id -> topic_master.topic_id
unique:
- topic_code

## 5.3 CX22073JW.article_discipline_binding
- article_discipline_binding_id uuid not null
- article_id uuid not null
- discipline_id uuid not null
- binding_role text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- discipline_id -> discipline_master.discipline_id
unique:
- (article_id, discipline_id, binding_role)

## 5.4 CX22073JW.article_topic_binding
- article_topic_binding_id uuid not null
- article_id uuid not null
- topic_id uuid not null
- binding_role text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- topic_id -> topic_master.topic_id
unique:
- (article_id, topic_id, binding_role)

# ============================================================
# 6. 難易度 / 対象者
# ============================================================

## 6.1 CX22073JW.difficulty_profile_master
- difficulty_profile_id uuid not null
- difficulty_code text not null
- display_name text not null
- description text null
- level_no integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- difficulty_code

## 6.2 CX22073JW.audience_profile_master
- audience_profile_id uuid not null
- audience_code text not null
- display_name text not null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- audience_code

## 6.3 CX22073JW.article_profile_binding
- article_profile_binding_id uuid not null
- article_id uuid not null
- difficulty_profile_id uuid null
- audience_profile_id uuid null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- difficulty_profile_id -> difficulty_profile_master.difficulty_profile_id
- audience_profile_id -> audience_profile_master.audience_profile_id

# ============================================================
# 7. 要約
# ============================================================

## 7.1 CX22073JW.space_summary
- space_summary_id uuid not null
- space_id uuid not null
- summary_title text not null
- summary_text text not null
- locale_code text null
- summary_level text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- space_id -> space_master.space_id

## 7.2 CX22073JW.scope_summary
- scope_summary_id uuid not null
- scope_id uuid not null
- summary_title text not null
- summary_text text not null
- locale_code text null
- summary_level text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- scope_id -> scope_master.scope_id

## 7.3 CX22073JW.topic_summary
- topic_summary_id uuid not null
- topic_id uuid not null
- summary_title text not null
- summary_text text not null
- locale_code text null
- summary_level text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- topic_id -> topic_master.topic_id

# ============================================================
# 8. 学習導線
# ============================================================

## 8.1 CX22073JW.prerequisite_relation
- prerequisite_relation_id uuid not null
- from_topic_id uuid null
- from_article_id uuid null
- required_topic_id uuid null
- required_article_id uuid null
- relation_strength text not null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- from_topic_id -> topic_master.topic_id
- from_article_id -> article.article_id
- required_topic_id -> topic_master.topic_id
- required_article_id -> article.article_id

## 8.2 CX22073JW.learning_path
- learning_path_id uuid not null
- learning_path_code text not null
- display_name text not null
- description text null
- scope_id uuid null
- audience_profile_id uuid null
- difficulty_profile_id uuid null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- scope_id -> scope_master.scope_id
- audience_profile_id -> audience_profile_master.audience_profile_id
- difficulty_profile_id -> difficulty_profile_master.difficulty_profile_id
unique:
- learning_path_code

## 8.3 CX22073JW.learning_path_item
- learning_path_item_id uuid not null
- learning_path_id uuid not null
- step_no integer not null
- item_type text not null
- article_id uuid null
- topic_id uuid null
- note_text text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- learning_path_id -> learning_path.learning_path_id
- article_id -> article.article_id
- topic_id -> topic_master.topic_id
unique:
- (learning_path_id, step_no)

# ============================================================
# 9. 出典 / 監修
# ============================================================

## 9.1 CX22073JW.source_master
- source_id uuid not null
- source_code text not null
- source_name text not null
- source_type text not null
- authority_level text null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- source_code

## 9.2 CX22073JW.article_source
- article_source_id uuid not null
- article_id uuid not null
- source_id uuid not null
- citation_text text null
- source_url text null
- evidence_level text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- source_id -> source_master.source_id

## 9.3 CX22073JW.review_status_master
- review_status_id uuid not null
- review_status_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- review_status_code

## 9.4 CX22073JW.article_review_log
- article_review_log_id uuid not null
- article_id uuid not null
- review_status_id uuid not null
- reviewer_name text null
- review_note text null
- reviewed_at timestamptz not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- article_id -> article.article_id
- review_status_id -> review_status_master.review_status_id

# ============================================================
# 10. 時系列 / 歴史
# ============================================================

## 10.1 CX22073JW.timeline_event
- timeline_event_id uuid not null
- event_code text not null
- domain_id uuid null
- display_name text not null
- summary text null
- event_start_at timestamptz null
- event_end_at timestamptz null
- chronology_label text null
- locale_code text null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- domain_id -> domain_master.domain_id
unique:
- event_code

## 10.2 CX22073JW.event_relation
- event_relation_id uuid not null
- from_event_id uuid not null
- to_event_id uuid not null
- relation_type text not null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- from_event_id -> timeline_event.timeline_event_id
- to_event_id -> timeline_event.timeline_event_id

## 10.3 CX22073JW.event_entity_binding
- event_entity_binding_id uuid not null
- timeline_event_id uuid not null
- entity_id uuid not null
- binding_role text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- timeline_event_id -> timeline_event.timeline_event_id
- entity_id -> entity_master.entity_id

# ============================================================
# 11. 検索戦略
# ============================================================

## 11.1 CX22073JW.retrieval_profile
- retrieval_profile_id uuid not null
- retrieval_profile_code text not null
- display_name text not null
- description text null
- retrieval_mode text not null
- config_json jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- retrieval_profile_code

## 11.2 CX22073JW.scope_retrieval_binding
- scope_retrieval_binding_id uuid not null
- scope_id uuid not null
- retrieval_profile_id uuid not null
- priority_no integer not null default 0
- is_default boolean not null default false
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- scope_id -> scope_master.scope_id
- retrieval_profile_id -> retrieval_profile.retrieval_profile_id
unique:
- (scope_id, retrieval_profile_id)

# ============================================================
# 12. 回答スタイル
# ============================================================

## 12.1 CX22073JW.answer_style_profile
- answer_style_profile_id uuid not null
- answer_style_profile_code text not null
- display_name text not null
- description text null
- style_json jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
unique:
- answer_style_profile_code

## 12.2 CX22073JW.response_template
- response_template_id uuid not null
- response_template_code text not null
- answer_style_profile_id uuid null
- template_title text not null
- template_body text not null
- locale_code text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- answer_style_profile_id -> answer_style_profile.answer_style_profile_id
unique:
- response_template_code

## 12.3 CX22073JW.scope_style_binding
- scope_style_binding_id uuid not null
- scope_id uuid not null
- answer_style_profile_id uuid not null
- priority_no integer not null default 0
- is_default boolean not null default false
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- scope_id -> scope_master.scope_id
- answer_style_profile_id -> answer_style_profile.answer_style_profile_id
unique:
- (scope_id, answer_style_profile_id)

# ============================================================
# 13. 改善 / 分析
# ============================================================

## 13.1 CX22073JW.session_log
- session_log_id uuid not null
- caller_id uuid null
- requested_scope_id uuid null
- actual_scope_id uuid null
- locale_code text null
- started_at timestamptz not null
- ended_at timestamptz null
- result_status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- caller_id -> caller_master.caller_id
- requested_scope_id -> scope_master.scope_id
- actual_scope_id -> scope_master.scope_id

## 13.2 CX22073JW.answer_source_log
- answer_source_log_id uuid not null
- session_log_id uuid not null
- article_id uuid null
- chunk_id uuid null
- faq_id uuid null
- source_rank integer not null default 0
- usage_role text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- session_log_id -> session_log.session_log_id
- article_id -> article.article_id
- chunk_id -> chunk.chunk_id
- faq_id -> faq.faq_id

## 13.3 CX22073JW.question_pattern
- question_pattern_id uuid not null
- pattern_code text not null
- display_name text not null
- canonical_question text not null
- scope_id uuid null
- frequency_no integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- scope_id -> scope_master.scope_id
unique:
- pattern_code

## 13.4 CX22073JW.knowledge_gap_log
- knowledge_gap_log_id uuid not null
- session_log_id uuid null
- scope_id uuid null
- gap_type text not null
- user_question_text text not null
- gap_note text null
- resolution_status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
fk:
- session_log_id -> session_log.session_log_id
- scope_id -> scope_master.scope_id

# ============================================================
# 14. 次工程
# ============================================================

次工程候補:
- full DDL 化
- seed 設計
- portal caller / scope 初期値設計
- legal / medical / academic / history 初期値設計
