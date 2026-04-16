-- ============================================================
-- SCENARIO INITIAL SEED DRAFT
-- scenario only
-- draft-additive / not applied
-- ============================================================

insert into scenario.scenario_master
(scenario_code, display_name, summary, canonical_article_id, publish_status, status, created_at, updated_at)
values
('civilization_intro_story', 'Civilization Intro Story', 'Civilization 全体入口向けの導入シナリオ', null, 'published', 'active', now(), now())
on conflict do nothing;

insert into scenario.scenario_version
(scenario_master_id, scenario_version_code, version_no, release_status, created_at, updated_at)
select sm.scenario_master_id, 'civilization_intro_story_v1', 1, 'released', now(), now()
from scenario.scenario_master sm
where sm.scenario_code = 'civilization_intro_story'
on conflict do nothing;

insert into scenario.scenario_chapter
(scenario_version_id, chapter_code, chapter_no, display_name, summary, status, created_at, updated_at)
select sv.scenario_version_id, 'civilization_intro_chapter_1', 1, '導入', 'Civilization 導入章', 'active', now(), now()
from scenario.scenario_version sv
where sv.scenario_version_code = 'civilization_intro_story_v1'
on conflict do nothing;

insert into scenario.scenario_scene
(scenario_version_id, scenario_chapter_id, scene_code, scene_no, display_name, scene_type, playback_text, next_scene_code, status, created_at, updated_at)
select
  sv.scenario_version_id,
  sc.scenario_chapter_id,
  x.scene_code,
  x.scene_no,
  x.display_name,
  x.scene_type,
  x.playback_text,
  x.next_scene_code,
  'active',
  now(),
  now()
from scenario.scenario_version sv
join scenario.scenario_chapter sc
  on sc.scenario_version_id = sv.scenario_version_id
join (
  values
  ('civilization_intro_scene_001', 1, 'はじまり', 'narration', 'ようこそ。ここは Civilization の入口です。', 'civilization_intro_scene_002'),
  ('civilization_intro_scene_002', 2, '選択', 'choice_entry', 'どこから見ますか。', null),
  ('civilization_intro_scene_003', 3, 'OS導線', 'transition', 'OS 一覧へ進みます。', null),
  ('civilization_intro_scene_004', 4, 'Helpdesk導線', 'transition', 'AIヘルプデスクへ進みます。', null)
) as x(scene_code, scene_no, display_name, scene_type, playback_text, next_scene_code)
  on true
where sv.scenario_version_code = 'civilization_intro_story_v1'
  and sc.chapter_code = 'civilization_intro_chapter_1'
on conflict do nothing;

insert into scenario.scenario_scene_node
(scenario_scene_id, node_no, node_type, display_text, payload_json, status, created_at, updated_at)
select ss.scenario_scene_id, 1, 'narration_line', ss.playback_text, null, 'active', now(), now()
from scenario.scenario_scene ss
where ss.scene_code in ('civilization_intro_scene_001','civilization_intro_scene_002','civilization_intro_scene_003','civilization_intro_scene_004')
on conflict do nothing;

insert into scenario.scenario_choice
(scenario_scene_id, choice_code, choice_no, display_text, next_scene_code, status, created_at, updated_at)
select ss.scenario_scene_id, x.choice_code, x.choice_no, x.display_text, x.next_scene_code, 'active', now(), now()
from scenario.scenario_scene ss
join (
  values
  ('civilization_intro_scene_002','civilization_intro_choice_os',1,'OS 一覧を見る','civilization_intro_scene_003'),
  ('civilization_intro_scene_002','civilization_intro_choice_helpdesk',2,'AIヘルプデスクを見る','civilization_intro_scene_004')
) as x(scene_code, choice_code, choice_no, display_text, next_scene_code)
  on ss.scene_code = x.scene_code
on conflict do nothing;

insert into scenario.scenario_playback_profile
(playback_profile_code, display_name, description, playback_json, status, created_at, updated_at)
values
('default_story_playback', 'Default Story Playback', '標準再生プロファイル', '{"textSpeed":"normal","autoAdvance":false}', 'active', now(), now())
on conflict do nothing;

insert into scenario.scenario_progress_rule
(scenario_version_id, progress_rule_code, rule_type, rule_json, status, created_at, updated_at)
select sv.scenario_version_id, 'civilization_intro_story_v1_completion', 'completion_condition', '{"endingScenes":["civilization_intro_scene_003","civilization_intro_scene_004"]}', 'active', now(), now()
from scenario.scenario_version sv
where sv.scenario_version_code = 'civilization_intro_story_v1'
on conflict do nothing;
