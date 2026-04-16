-- ============================================================
-- CX22073JW INITIAL SEED DRAFT
-- draft-additive / not applied
-- ============================================================

-- ============================================================
-- 1. domain_master
-- ============================================================
insert into "CX22073JW".domain_master
(domain_code, display_name, description, sort_order, status, created_at, updated_at)
values
('application', 'Application', 'アプリ知識', 10, 'active', now(), now()),
('os', 'OS', 'OS知識', 20, 'active', now(), now()),
('certification', 'Certification', '資格知識', 30, 'active', now(), now()),
('language', 'Language', '言語知識', 40, 'active', now(), now()),
('academic', 'Academic', '学問知識', 50, 'active', now(), now()),
('real_history', 'Real History', '現実の歴史知識', 60, 'active', now(), now()),
('civilization_history', 'Civilization History', 'Civilization の歴史知識', 70, 'active', now(), now()),
('legal', 'Legal', '法律知識', 80, 'active', now(), now()),
('medical', 'Medical', '医療知識', 90, 'active', now(), now()),
('business', 'Business', 'Business 固定知識', 100, 'active', now(), now()),
('life', 'Life', 'Life 知識', 110, 'active', now(), now()),
('general_support', 'General Support', '全般ヘルプ知識', 120, 'active', now(), now())
on conflict do nothing;

-- ============================================================
-- 2. space_master
-- ============================================================
insert into "CX22073JW".space_master
(domain_id, space_code, display_name, description, locale_code, default_answer_style_profile_code, default_safety_policy_profile_code, publish_status, status, sort_order, created_at, updated_at)
select d.domain_id, x.space_code, x.display_name, x.description, 'ja-JP', null, null, 'published', 'active', x.sort_order, now(), now()
from "CX22073JW".domain_master d
join (
  values
  ('general_support','civilization_portal_support','Civilization Portal Support','Portal 全体ヘルプ知識',10),
  ('general_support','application_directory_support','Application Directory Support','アプリ案内知識',20),
  ('general_support','os_general_support','OS General Support','OS 全般ヘルプ知識',30),
  ('os','civilization_os_support','CivilizationOS Support','CivilizationOS 固定知識',40),
  ('os','persona_os_support','PersonaOS Support','PersonaOS 固定知識',50),
  ('os','business_os_support','BusinessOS Support','BusinessOS 固定知識',60),
  ('business','business_os_fixed_knowledge','BusinessOS Fixed Knowledge','BusinessOS の固定知識',70),
  ('business','erp_fixed_knowledge','ERP Fixed Knowledge','ERP の固定知識',80),
  ('academic','general_literacy','General Literacy','一般教養知識',90),
  ('academic','quantum_mechanics','Quantum Mechanics','量子力学知識',100),
  ('real_history','world_history_real','World History Real','世界史知識',110),
  ('civilization_history','civilization_history_foundation','Civilization History Foundation','Civilization成立史',120),
  ('legal','legal_general_support','Legal General Support','法律一般知識',130),
  ('medical','medical_general_support','Medical General Support','医療一般知識',140)
) as x(domain_code, space_code, display_name, description, sort_order)
  on d.domain_code = x.domain_code
on conflict do nothing;

-- ============================================================
-- 3. scope_master
-- ============================================================
insert into "CX22073JW".scope_master
(space_id, scope_code, display_name, description, scope_level, query_hint, is_default, publish_status, status, sort_order, created_at, updated_at)
select s.space_id, x.scope_code, x.display_name, x.description, x.scope_level, null, x.is_default, 'published', 'active', x.sort_order, now(), now()
from "CX22073JW".space_master s
join (
  values
  ('civilization_portal_support','civilization_portal_support_basic','Civilization Portal Support Basic','Portal 基本ヘルプ','basic',true,10),
  ('application_directory_support','application_directory_support_basic','Application Directory Support Basic','アプリ一覧基本案内','basic',true,20),
  ('os_general_support','os_general_support_basic','OS General Support Basic','OS 一般案内','basic',true,30),
  ('civilization_portal_support','portal_top_helpdesk_default','Portal Top Helpdesk Default','Portal トップ用標準ヘルプ','full',false,40),
  ('business_os_fixed_knowledge','business_os_general_fixed','BusinessOS General Fixed','BusinessOS 固定知識一般','full',true,50),
  ('business_os_fixed_knowledge','business_os_billing_fixed','BusinessOS Billing Fixed','BusinessOS 請求固定知識','restricted',false,60),
  ('business_os_fixed_knowledge','business_os_inventory_fixed','BusinessOS Inventory Fixed','BusinessOS 在庫固定知識','restricted',false,70),
  ('business_os_fixed_knowledge','business_os_approval_fixed','BusinessOS Approval Fixed','BusinessOS 承認固定知識','restricted',false,80),
  ('erp_fixed_knowledge','erp_general_fixed','ERP General Fixed','ERP 固定知識一般','full',true,90),
  ('general_literacy','general_literacy_basic','General Literacy Basic','一般教養基礎','basic',true,100),
  ('quantum_mechanics','quantum_mechanics_intro','Quantum Mechanics Intro','量子力学入門','basic',true,110),
  ('quantum_mechanics','quantum_mechanics_advanced','Quantum Mechanics Advanced','量子力学上級','advanced',false,120),
  ('legal_general_support','legal_general_basic','Legal General Basic','法律一般基礎','basic',true,130),
  ('medical_general_support','medical_general_basic','Medical General Basic','医療一般基礎','basic',true,140)
) as x(space_code, scope_code, display_name, description, scope_level, is_default, sort_order)
  on s.space_code = x.space_code
on conflict do nothing;

-- ============================================================
-- 4. disclaimer_master
-- ============================================================
insert into "CX22073JW".disclaimer_master
(disclaimer_code, display_name, body_text, locale_code, disclaimer_type, publish_status, status, created_at, updated_at)
values
('general_support_default', 'General Support Default', '一般案内として提供される参考情報です。', 'ja-JP', 'general_support', 'published', 'active', now(), now()),
('legal_general_default', 'Legal General Default', '法律相談は一般的な情報提供であり、個別案件の正式な法的助言ではありません。', 'ja-JP', 'legal', 'published', 'active', now(), now()),
('medical_general_default', 'Medical General Default', '医療相談は一般的な情報提供であり、診断や治療の代替ではありません。', 'ja-JP', 'medical', 'published', 'active', now(), now()),
('study_general_default', 'Study General Default', '学習用途向けの知識提供です。', 'ja-JP', 'study', 'published', 'active', now(), now()),
('historical_reference_default', 'Historical Reference Default', '歴史知識は参照情報として提供します。', 'ja-JP', 'historical_reference', 'published', 'active', now(), now())
on conflict do nothing;

-- ============================================================
-- 5. caller_master
-- ============================================================
insert into "CX22073JW".caller_master
(caller_code, caller_type, display_name, description, owner_domain_code, owner_target_code, default_space_code, default_scope_code, status, created_at, updated_at)
values
('portal_site_top', 'portal', 'Portal Site Top', 'Portal トップ画面ヘルプデスク', 'general_support', 'portal_site', 'civilization_portal_support', 'portal_top_helpdesk_default', 'active', now(), now()),
('portal_site_helpdesk', 'portal', 'Portal Site Helpdesk', 'Portal helpdesk 共通入口', 'general_support', 'portal_site', 'civilization_portal_support', 'civilization_portal_support_basic', 'active', now(), now()),
('portal_site_os_list', 'portal', 'Portal Site OS List', 'Portal OS 一覧画面', 'general_support', 'portal_site', 'os_general_support', 'os_general_support_basic', 'active', now(), now()),
('civilization_os', 'os', 'CivilizationOS', 'CivilizationOS からの知識参照', 'os', 'civilization_os', 'civilization_os_support', 'civilization_portal_support_basic', 'active', now(), now()),
('persona_os', 'os', 'PersonaOS', 'PersonaOS からの知識参照', 'os', 'persona_os', 'persona_os_support', 'civilization_portal_support_basic', 'active', now(), now()),
('business_os', 'os', 'BusinessOS', 'BusinessOS からの知識参照', 'os', 'business_os', 'business_os_support', 'business_os_general_fixed', 'active', now(), now()),
('business_os_ai_worker', 'internal_tool', 'BusinessOS AI Worker', 'BusinessOS AI worker 固定知識参照', 'business', 'business_os_ai_worker', 'business_os_fixed_knowledge', 'business_os_general_fixed', 'active', now(), now()),
('legal_consult_app', 'consultation_app', 'Legal Consult App', '法律相談アプリ', 'legal', 'legal_consult_app', 'legal_general_support', 'legal_general_basic', 'active', now(), now()),
('medical_consult_app', 'consultation_app', 'Medical Consult App', '医療相談アプリ', 'medical', 'medical_consult_app', 'medical_general_support', 'medical_general_basic', 'active', now(), now()),
('academic_study_app', 'application', 'Academic Study App', '学問知識アクセス用アプリ', 'academic', 'academic_study_app', 'general_literacy', 'general_literacy_basic', 'active', now(), now())
on conflict do nothing;

-- ============================================================
-- 6. caller_scope_binding
-- ============================================================
insert into "CX22073JW".caller_scope_binding
(caller_id, scope_id, is_default, priority_no, access_mode, status, created_at, updated_at)
select c.caller_id, sc.scope_id, x.is_default, x.priority_no, x.access_mode, 'active', now(), now()
from "CX22073JW".caller_master c
join (
  values
  ('portal_site_top','portal_top_helpdesk_default',true,10,'preferred'),
  ('portal_site_top','civilization_portal_support_basic',false,20,'fallback_only'),
  ('portal_site_top','application_directory_support_basic',false,30,'allowed'),
  ('portal_site_top','os_general_support_basic',false,40,'allowed'),
  ('portal_site_os_list','application_directory_support_basic',true,10,'preferred'),
  ('portal_site_os_list','os_general_support_basic',false,20,'allowed'),
  ('business_os_ai_worker','business_os_general_fixed',true,10,'preferred'),
  ('business_os_ai_worker','business_os_billing_fixed',false,20,'allowed'),
  ('business_os_ai_worker','business_os_inventory_fixed',false,30,'allowed'),
  ('business_os_ai_worker','business_os_approval_fixed',false,40,'allowed'),
  ('business_os_ai_worker','erp_general_fixed',false,50,'fallback_only'),
  ('legal_consult_app','legal_general_basic',true,10,'preferred'),
  ('medical_consult_app','medical_general_basic',true,10,'preferred'),
  ('academic_study_app','general_literacy_basic',true,10,'preferred'),
  ('academic_study_app','quantum_mechanics_intro',false,20,'allowed')
) as x(caller_code, scope_code, is_default, priority_no, access_mode)
  on c.caller_code = x.caller_code
join "CX22073JW".scope_master sc
  on sc.scope_code = x.scope_code
on conflict do nothing;

-- ============================================================
-- 7. route_policy
-- ============================================================
insert into "CX22073JW".route_policy
(route_policy_code, caller_id, primary_scope_id, fallback_scope_id, answer_style_profile_code, safety_policy_profile_code, disclaimer_code, escalation_required, status, created_at, updated_at)
select
  x.route_policy_code,
  c.caller_id,
  ps.scope_id,
  fs.scope_id,
  x.answer_style_profile_code,
  x.safety_policy_profile_code,
  x.disclaimer_code,
  x.escalation_required,
  'active',
  now(),
  now()
from (
  values
  ('portal_site_top_policy','portal_site_top','portal_top_helpdesk_default','civilization_portal_support_basic',null,null,'general_support_default',false),
  ('business_os_ai_worker_policy','business_os_ai_worker','business_os_general_fixed','erp_general_fixed',null,null,'general_support_default',false),
  ('legal_consult_app_policy','legal_consult_app','legal_general_basic',null,null,'legal_guarded','legal_general_default',true),
  ('medical_consult_app_policy','medical_consult_app','medical_general_basic',null,null,'medical_guarded','medical_general_default',true),
  ('academic_study_app_policy','academic_study_app','general_literacy_basic','quantum_mechanics_intro',null,null,'study_general_default',false)
) as x(route_policy_code, caller_code, primary_scope_code, fallback_scope_code, answer_style_profile_code, safety_policy_profile_code, disclaimer_code, escalation_required)
join "CX22073JW".caller_master c on c.caller_code = x.caller_code
left join "CX22073JW".scope_master ps on ps.scope_code = x.primary_scope_code
left join "CX22073JW".scope_master fs on fs.scope_code = x.fallback_scope_code
on conflict do nothing;
