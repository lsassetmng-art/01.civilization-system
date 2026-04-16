# ============================================================
# CX22073JW KNOWLEDGE SCHEMA FULL IMPLEMENTATION DESIGN
# ============================================================

status: draft-additive
layer: development
schema: CX22073JW
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
CX22073JW フル採用版の実装設計を整理する。

# ============================================================
# 2. 実装優先順
# ============================================================

phase A:
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

phase B:
- entity_master
- entity_alias
- relation_master
- article_entity_binding
- discipline_master
- topic_master
- article_discipline_binding
- article_topic_binding
- source_master
- review_status_master

phase C:
- difficulty_profile_master
- audience_profile_master
- article_profile_binding
- timeline_event
- event_relation
- event_entity_binding
- retrieval_profile
- answer_style_profile

phase D:
- summaries
- learning_path
- bindings
- response_template
- logs and gap analysis

# ============================================================
# 3. 利用対象
# ============================================================

- Portal Site helpdesk
- OS helpdesk
- application helpdesk
- certification learning
- language learning
- academic knowledge access
- real history access
- Civilization history access
- legal support
- medical support

# ============================================================
# 4. 原則
# ============================================================

- Portal は caller / scope 指定を担う
- CX22073JW は知識本体と回答構造を担う
- 学問知識は discipline / topic / difficulty / audience で出し分ける
- 法律 / 医療は disclaimer / safety / style を必ず分ける
