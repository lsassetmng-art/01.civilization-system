-- ============================================================
-- PORTAL INITIAL SEED DRAFT
-- portal only
-- draft-additive / not applied
-- ============================================================

insert into portal.copy_text
(copy_key, locale_code, page_code, section_code, text_value, status, effective_from, effective_to, created_at, updated_at)
values
('top.hero.title', 'ja-JP', 'top', 'hero', 'Civilization Portal Site', 'active', now(), null, now(), now()),
('top.hero.description', 'ja-JP', 'top', 'hero', 'Civilization 全体の公開入口。各OSや各機能への導線を提供する。', 'active', now(), null, now(), now()),
('top.ai_helpdesk.title', 'ja-JP', 'top', 'ai_helpdesk', 'AIヘルプデスク', 'active', now(), null, now(), now()),
('top.ai_helpdesk.description', 'ja-JP', 'top', 'ai_helpdesk', '全体入口として利用できる AIチャット導線。', 'active', now(), null, now(), now()),
('top.ai_helpdesk.cta', 'ja-JP', 'top', 'ai_helpdesk', 'AIチャットを開く', 'active', now(), null, now(), now()),
('civilization.page.title', 'ja-JP', 'civilization', 'hero', 'Civilization とは', 'active', now(), null, now(), now()),
('civilization.page.description', 'ja-JP', 'civilization', 'hero', 'Civilization 全体の考え方と入口構造を説明する。', 'active', now(), null, now(), now()),
('os.list.page.title', 'ja-JP', 'os_list', 'hero', 'OS 一覧', 'active', now(), null, now(), now()),
('os.list.page.description', 'ja-JP', 'os_list', 'hero', '各OSへの一覧導線。', 'active', now(), null, now(), now()),
('guide.page.title', 'ja-JP', 'guide', 'hero', '利用案内', 'active', now(), null, now(), now()),
('guide.page.description', 'ja-JP', 'guide', 'hero', 'Portal Site の使い方を案内する。', 'active', now(), null, now(), now())
on conflict do nothing;

insert into portal.helpdesk_entry
(helpdesk_code, display_name, short_description, route_or_target, support_scope, visibility_status, publish_status, sort_order, status, created_at, updated_at)
values
('portal_top_ai_helpdesk', 'AIヘルプデスク', '全体入口として使う AIヘルプデスク', '/helpdesk', 'portal_general', 'visible', 'published', 10, 'active', now(), now())
on conflict do nothing;

insert into portal.nav_node
(node_code, parent_nav_node_id, node_type, display_name, description, icon_asset_id, sort_order, visibility_status, publish_status, status, created_at, updated_at)
values
('civilization_root', null, 'group', 'Civilization', 'Civilization 全体案内', null, 10, 'visible', 'published', 'active', now(), now()),
('os_root', null, 'group', 'OS', 'OS 一覧入口', null, 20, 'visible', 'published', 'active', now(), now()),
('application_root', null, 'group', 'Applications', 'アプリ一覧入口', null, 30, 'visible', 'published', 'active', now(), now()),
('helpdesk_root', null, 'group', 'Helpdesk', 'ヘルプデスク入口', null, 40, 'visible', 'published', 'active', now(), now()),
('scenario_root', null, 'group', 'Scenario', 'シナリオ入口', null, 50, 'visible', 'published', 'active', now(), now())
on conflict do nothing;

insert into portal.nav_node_target
(nav_node_id, target_kind, target_code, internal_route, external_url, helpdesk_code, open_mode, status, created_at, updated_at)
select
  n.nav_node_id,
  case
    when n.node_code = 'helpdesk_root' then 'helpdesk'
    when n.node_code = 'scenario_root' then 'scenario_entry'
    else 'page'
  end,
  n.node_code,
  case
    when n.node_code = 'civilization_root' then '/civilization'
    when n.node_code = 'os_root' then '/os'
    when n.node_code = 'application_root' then '/applications'
    when n.node_code = 'helpdesk_root' then '/helpdesk'
    when n.node_code = 'scenario_root' then '/scenario'
    else null
  end,
  null,
  case when n.node_code = 'helpdesk_root' then 'portal_top_ai_helpdesk' else null end,
  'same_tab',
  'active',
  now(),
  now()
from portal.nav_node n
where n.node_code in ('civilization_root','os_root','application_root','helpdesk_root','scenario_root')
on conflict do nothing;

insert into portal.page_section
(page_code, section_code, section_type, title_copy_key, description_copy_key, sort_order, visibility_status, status, created_at, updated_at)
values
('top', 'hero', 'hero', 'top.hero.title', 'top.hero.description', 10, 'visible', 'active', now(), now()),
('top', 'ai_helpdesk', 'helpdesk', 'top.ai_helpdesk.title', 'top.ai_helpdesk.description', 20, 'visible', 'active', now(), now()),
('top', 'app_tree', 'app_tree', null, null, 30, 'visible', 'active', now(), now()),
('civilization', 'hero', 'hero', 'civilization.page.title', 'civilization.page.description', 10, 'visible', 'active', now(), now()),
('os_list', 'hero', 'hero', 'os.list.page.title', 'os.list.page.description', 10, 'visible', 'active', now(), now()),
('guide', 'hero', 'hero', 'guide.page.title', 'guide.page.description', 10, 'visible', 'active', now(), now()),
('scenario', 'hero', 'hero', null, null, 10, 'visible', 'active', now(), now())
on conflict do nothing;

insert into portal.page_section_item
(page_section_id, item_type, ref_nav_node_id, ref_helpdesk_entry_id, ref_copy_key, sort_order, visibility_status, status, created_at, updated_at)
select s.page_section_id, 'helpdesk_entry', null, h.helpdesk_entry_id, null, 10, 'visible', 'active', now(), now()
from portal.page_section s
join portal.helpdesk_entry h on h.helpdesk_code = 'portal_top_ai_helpdesk'
where s.page_code = 'top' and s.section_code = 'ai_helpdesk'
on conflict do nothing;

insert into portal.page_section_item
(page_section_id, item_type, ref_nav_node_id, ref_helpdesk_entry_id, ref_copy_key, sort_order, visibility_status, status, created_at, updated_at)
select s.page_section_id, 'nav_node', n.nav_node_id, null, null, n.sort_order, 'visible', 'active', now(), now()
from portal.page_section s
join portal.nav_node n on n.node_code in ('civilization_root','os_root','application_root','helpdesk_root','scenario_root')
where s.page_code = 'top' and s.section_code = 'app_tree'
on conflict do nothing;
