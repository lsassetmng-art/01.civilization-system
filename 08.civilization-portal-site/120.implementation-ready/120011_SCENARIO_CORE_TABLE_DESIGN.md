# ============================================================
# SCENARIO CORE TABLE DESIGN
# ============================================================

status: draft-additive
layer: implementation-ready
schema: scenario
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
scenario の中核テーブル設計を定義する。

# ============================================================
# 2. 中核テーブル
# ============================================================

scenario_master:
- シナリオ本体
- scenario_code
- display_name
- summary
- canonical_article_id
- publish_status
- status

scenario_version:
- scenario_version_code
- scenario_master_id
- version_no
- release_status

scenario_chapter:
- chapter_code
- scenario_version_id
- chapter_no
- display_name

scenario_scene:
- scene_code
- scenario_version_id
- chapter_id
- scene_no
- display_name
- scene_type
- playback_text
- next_scene_code

scenario_choice:
- choice_code
- scene_id
- choice_no
- display_text
- next_scene_code

scenario_branch_rule:
- branch_rule_code
- scene_id
- condition_type
- condition_json
- pass_next_scene_code
- fail_next_scene_code

scenario_trigger:
- trigger_code
- scene_id
- trigger_type
- trigger_payload_json

scenario_character_binding:
- scenario_character_binding_id
- scene_id
- character_entity_id
- role_in_scene

# ============================================================
# 3. 接続原則
# ============================================================

- canonical_article_id は CX22073JW.article を参照する
- character_entity_id は CX22073JW.entity_master を参照する
- シナリオ再生と知識本文を分離する
