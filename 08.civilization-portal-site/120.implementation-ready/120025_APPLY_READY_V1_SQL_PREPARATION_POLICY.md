# ============================================================
# APPLY READY V1 SQL PREPARATION POLICY
# portal / CX22073JW / scenario
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
現在の DDL draft / seed draft を
apply-ready v1 SQL へ寄せる前に、
整理方針を固定するための文書である。

# ============================================================
# 2. v1 の対象
# ============================================================

v1 では、
最小成立に必要なものだけを apply-ready 対象とする。

対象 schema:
- portal
- CX22073JW
- scenario

対象範囲:
- portal schema core
- CX22073JW core
- CX22073JW.character_profile
- scenario core
- portal initial seed
- CX22073JW initial seed

# ============================================================
# 3. v1 に含める portal
# ============================================================

portal v1:
- copy_text
- nav_node
- nav_node_target
- helpdesk_entry
- page_section
- page_section_item

portal v1 seed:
- top hero copy
- top AI helpdesk copy
- top AI helpdesk entry
- root navigation nodes
- top page sections
- top page section items

# ============================================================
# 4. v1 に含める CX22073JW
# ============================================================

CX22073JW v1:
- domain_master
- space_master
- scope_master
- article
- chunk
- faq
- caller_master
- caller_scope_binding
- disclaimer_master
- route_policy
- entity_master
- character_profile

CX22073JW v1 seed:
- domain initial set
- minimum space set
- minimum scope set
- minimum disclaimer set
- minimum caller set
- minimum caller_scope_binding set
- minimum route_policy set

# ============================================================
# 5. v1 に含める scenario
# ============================================================

scenario v1:
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

seed:
- v1 では必須でない
- seed は後段でもよい

# ============================================================
# 6. v1 で見送るもの
# ============================================================

CX22073JW expansion v2:
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

reason:
- v1 は最小成立を優先する
- expansion は v2 以降で追加する

# ============================================================
# 7. cross-schema 方針
# ============================================================

v1 では、
cross-schema reference は論理参照を原則とする。

対象例:
- scenario.scenario_master.canonical_article_id
- scenario.scenario_character_binding.character_entity_id
- scenario.scenario_event_binding.timeline_event_id

方針:
- 物理 FK は v1 では強制しない
- 論理参照としてコメント / 設計で固定する
- 後で DB 実行方針が固まった段階で物理 FK を検討する

# ============================================================
# 8. UUID 方針
# ============================================================

v1 の UUID 生成は
pgcrypto + gen_random_uuid() を使う方針とする。

# ============================================================
# 9. SQL 分割方針
# ============================================================

apply-ready v1 は次の単位で分割する。

1. portal schema apply-ready v1
2. CX22073JW core apply-ready v1
3. scenario core apply-ready v1
4. portal seed-ready v1
5. CX22073JW seed-ready v1

原則:
- DDL と seed を分ける
- schema ごとに apply 単位を分ける
- 失敗時の切り戻し範囲を小さくする

# ============================================================
# 10. 最小成立条件
# ============================================================

v1 最小成立条件:
- Portal top に AI helpdesk 入口を表示できる
- Portal copy が DB 取得できる
- Portal nav tree が DB 取得できる
- caller / scope / route_policy が成立する
- Portal top helpdesk が CX22073JW を参照できる
- BusinessOS AI worker の固定知識 scope が成立する
- character_profile が正本として存在する
- sinario core を後続実装が参照できる

# ============================================================
# 11. 先に確定すべき判断
# ============================================================

freeze items:
- cross-schema FK は v1 では論理参照でよいか
- v1 は expansion を入れず core only にするか
- sinario seed は v1 で見送るか
- answer_style_profile / retrieval_profile は v2 に回すか
- portal / CX22073JW seed を separate apply にするか

# ============================================================
# 12. 次工程
# ============================================================

次工程候補:
- apply-ready v1 SQL 作成
- seed-ready v1 SQL 作成
- v2 expansion SQL 計画
