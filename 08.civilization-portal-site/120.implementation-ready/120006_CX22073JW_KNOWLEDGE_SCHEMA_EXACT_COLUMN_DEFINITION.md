# ============================================================
# CX22073JW KNOWLEDGE SCHEMA EXACT COLUMN DEFINITION
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
Civilization 全体の共通知識基盤として扱う
CX22073JW schema の
最小中核10テーブルについて、
exact column 定義を固定する文書である。

本書の対象は次の通りとする。

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

# ============================================================
# 2. 共通原則
# ============================================================

- schema 名は CX22073JW とする
- master 系の code は text を使う
- 運用レコード主キーは uuid を使う
- status / visibility / publish などは text + check 前提とする
- created_at / updated_at を原則必須とする
- exact DDL 化は次工程で行う

# ============================================================
# 3. CX22073JW.domain_master
# ============================================================

table_name:
- CX22073JW.domain_master

purpose:
知識の最上位大分類を定義する。

primary_key:
- domain_id uuid

columns:
- domain_id uuid not null
- domain_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique_candidates:
- domain_code

domain_code examples:
- application
- os
- certification
- language
- academic
- real_history
- civilization_history
- legal
- medical
- general_support

# ============================================================
# 4. CX22073JW.space_master
# ============================================================

table_name:
- CX22073JW.space_master

purpose:
検索・回答対象となる知識空間を定義する。

primary_key:
- space_id uuid

columns:
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

foreign_keys:
- domain_id -> CX22073JW.domain_master.domain_id

unique_candidates:
- space_code

space_code examples:
- civilization_portal_support
- civilization_os_support
- persona_os_support
- business_os_support
- retail_marketing_certification
- english_learning
- world_history_real
- civilization_history_foundation
- legal_general_support
- medical_general_support

# ============================================================
# 5. CX22073JW.scope_master
# ============================================================

table_name:
- CX22073JW.scope_master

purpose:
呼び出し時に指定される知識参照範囲を定義する。

primary_key:
- scope_id uuid

columns:
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

foreign_keys:
- space_id -> CX22073JW.space_master.space_id

unique_candidates:
- scope_code

scope_level examples:
- full
- summary_only
- faq_only
- beginner
- advanced
- restricted

scope_code examples:
- portal_general_support
- application_directory_support
- persona_os_basic
- business_os_billing_only
- english_beginner
- world_history_modern
- civilization_history_origin
- legal_general_faq_only

# ============================================================
# 6. CX22073JW.article
# ============================================================

table_name:
- CX22073JW.article

purpose:
知識記事の正本を保持する。

primary_key:
- article_id uuid

columns:
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

foreign_keys:
- space_id -> CX22073JW.space_master.space_id

unique_candidates:
- article_code

article_type examples:
- guide
- concept
- faq_source
- troubleshooting
- glossary
- legal_explanation
- medical_guidance
- historical_article
- academic_note

trust_level examples:
- canonical
- reviewed
- draft
- reference_only

# ============================================================
# 7. CX22073JW.chunk
# ============================================================

table_name:
- CX22073JW.chunk

purpose:
AI検索 / RAG 用の分割本文を保持する。

primary_key:
- chunk_id uuid

columns:
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

foreign_keys:
- article_id -> CX22073JW.article.article_id

unique_candidates:
- (article_id, chunk_no)

embedding_status examples:
- pending
- ready
- failed
- skipped

# ============================================================
# 8. CX22073JW.faq
# ============================================================

table_name:
- CX22073JW.faq

purpose:
FAQ の質問・短答・優先表示情報を保持する。

primary_key:
- faq_id uuid

columns:
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

foreign_keys:
- space_id -> CX22073JW.space_master.space_id
- long_answer_article_id -> CX22073JW.article.article_id

unique_candidates:
- faq_code

# ============================================================
# 9. CX22073JW.caller_master
# ============================================================

table_name:
- CX22073JW.caller_master

purpose:
知識基盤を呼び出す主体を定義する。

primary_key:
- caller_id uuid

columns:
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

unique_candidates:
- caller_code

caller_type examples:
- portal
- os
- application
- consultation_app
- internal_tool

caller_code examples:
- portal_site_top
- civilization_os
- persona_os
- business_os
- legal_consult_app
- medical_consult_app

# ============================================================
# 10. CX22073JW.caller_scope_binding
# ============================================================

table_name:
- CX22073JW.caller_scope_binding

purpose:
caller が利用可能な scope を定義する。

primary_key:
- caller_scope_binding_id uuid

columns:
- caller_scope_binding_id uuid not null
- caller_id uuid not null
- scope_id uuid not null
- is_default boolean not null default false
- priority_no integer not null default 0
- access_mode text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

foreign_keys:
- caller_id -> CX22073JW.caller_master.caller_id
- scope_id -> CX22073JW.scope_master.scope_id

unique_candidates:
- (caller_id, scope_id)

access_mode examples:
- allowed
- preferred
- fallback_only
- blocked

# ============================================================
# 11. CX22073JW.route_policy
# ============================================================

table_name:
- CX22073JW.route_policy

purpose:
caller ごとの知識振り分け / 回答方針を定義する。

primary_key:
- route_policy_id uuid

columns:
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

foreign_keys:
- caller_id -> CX22073JW.caller_master.caller_id
- primary_scope_id -> CX22073JW.scope_master.scope_id
- fallback_scope_id -> CX22073JW.scope_master.scope_id

unique_candidates:
- route_policy_code
- caller_id

# ============================================================
# 12. CX22073JW.disclaimer_master
# ============================================================

table_name:
- CX22073JW.disclaimer_master

purpose:
法務 / 医療 / 一般サポート等で表示する注意文を定義する。

primary_key:
- disclaimer_id uuid

columns:
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

unique_candidates:
- disclaimer_code

disclaimer_type examples:
- legal
- medical
- study
- general_support
- historical_reference

# ============================================================
# 13. 初期関係整理
# ============================================================

relations:
- domain_master 1 --- n space_master
- space_master 1 --- n scope_master
- space_master 1 --- n article
- article 1 --- n chunk
- space_master 1 --- n faq
- caller_master 1 --- n caller_scope_binding
- scope_master 1 --- n caller_scope_binding
- caller_master 1 --- 1 route_policy
- scope_master 1 --- n route_policy
- disclaimer_master 1 --- n route_policy

# ============================================================
# 14. 最小初期データ方向
# ============================================================

minimum_domains:
- application
- os
- certification
- language
- academic
- real_history
- civilization_history
- legal
- medical
- general_support

minimum_callers:
- portal_site_top
- civilization_os
- persona_os
- business_os

# ============================================================
# 15. 次工程
# ============================================================

次工程候補:
- DDL exact 化
- sample seed 設計
- portal schema との接続設計
- answer_style_profile / safety_policy_profile の追加設計
