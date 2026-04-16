# ============================================================
# CX22073JW INITIAL SEED DESIGN
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
CX22073JW の初期 seed 設計を定義する文書である。

対象:
- domain 初期値
- space 初期値
- scope 初期値
- caller 初期値
- route_policy 初期値の方向
- disclaimer 初期値の方向

# ============================================================
# 2. domain 初期値
# ============================================================

adoption_domains:
- application
- os
- certification
- language
- academic
- real_history
- civilization_history
- legal
- medical
- business
- life
- general_support

# ============================================================
# 3. space 初期値
# ============================================================

general_support:
- civilization_portal_support
- application_directory_support
- os_general_support

application:
- pocket_secretary_support
- name_card_manager_support
- estimate_creator_support
- shift_manager_support
- invoice_flow_support
- quick_forecast_support
- app_development_studio_support
- project_flow_support

os:
- civilization_os_support
- persona_os_support
- business_os_support
- life_os_support
- game_os_support
- streaming_os_support

business:
- business_os_fixed_knowledge
- erp_fixed_knowledge
- business_workflow_principles
- approval_policy_knowledge

certification:
- retail_marketing_certification
- business_certification_general

language:
- english_learning
- japanese_learning
- multilingual_expression_support

academic:
- general_literacy
- physics_foundation
- quantum_mechanics
- mathematics_foundation
- economics_foundation
- philosophy_foundation
- computer_science_foundation

real_history:
- world_history_real
- japan_history_real
- modern_history_real

civilization_history:
- civilization_history_foundation
- civilization_history_expansion
- civilization_history_institutions

legal:
- legal_general_support

medical:
- medical_general_support

life:
- life_planning_support
- health_general_support

# ============================================================
# 4. scope 初期値
# ============================================================

general_support:
- civilization_portal_support_basic
- application_directory_support_basic
- os_general_support_basic

portal_helpdesk:
- portal_top_helpdesk_default
- portal_top_helpdesk_faq_first

os:
- civilization_os_basic
- persona_os_basic
- business_os_basic
- life_os_basic
- streaming_os_basic

business:
- business_os_general_fixed
- business_os_billing_fixed
- business_os_inventory_fixed
- business_os_approval_fixed
- erp_general_fixed

certification:
- retail_marketing_level_1
- retail_marketing_general
- certification_general_faq

language:
- english_beginner
- english_intermediate
- japanese_beginner

academic:
- general_literacy_basic
- physics_beginner
- quantum_mechanics_intro
- quantum_mechanics_advanced
- economics_general

real_history:
- world_history_overview
- japan_history_overview
- modern_history_focus

civilization_history:
- civilization_history_origin
- civilization_history_major_events
- civilization_history_figures

legal:
- legal_general_faq_only
- legal_general_basic

medical:
- medical_general_faq_only
- medical_general_basic

life:
- life_planning_general
- health_general_basic

# ============================================================
# 5. caller 初期値
# ============================================================

portal:
- portal_site_top
- portal_site_os_list
- portal_site_helpdesk

os:
- civilization_os
- persona_os
- business_os
- life_os
- game_os
- streaming_os

applications:
- pocket_secretary_app
- name_card_manager_app
- estimate_creator_app
- shift_manager_app
- invoice_flow_app
- quick_forecast_app
- app_development_studio_app
- project_flow_app

consultation:
- legal_consult_app
- medical_consult_app

worker:
- business_os_ai_worker

learning:
- certification_study_app
- language_study_app
- academic_study_app

# ============================================================
# 6. caller_scope_binding 初期方向
# ============================================================

portal_site_top:
- portal_top_helpdesk_default
- civilization_portal_support_basic
- application_directory_support_basic
- os_general_support_basic

portal_site_os_list:
- application_directory_support_basic
- os_general_support_basic

civilization_os:
- civilization_os_basic

persona_os:
- persona_os_basic

business_os:
- business_os_basic
- business_os_general_fixed

business_os_ai_worker:
- business_os_general_fixed
- business_os_billing_fixed
- business_os_inventory_fixed
- business_os_approval_fixed
- erp_general_fixed

legal_consult_app:
- legal_general_basic
- legal_general_faq_only

medical_consult_app:
- medical_general_basic
- medical_general_faq_only

academic_study_app:
- general_literacy_basic
- physics_beginner
- quantum_mechanics_intro
- economics_general

# ============================================================
# 7. route_policy 初期方向
# ============================================================

portal_site_top:
- primary: portal_top_helpdesk_default
- fallback: civilization_portal_support_basic

business_os_ai_worker:
- primary: business_os_general_fixed
- fallback: erp_general_fixed

legal_consult_app:
- primary: legal_general_basic
- fallback: legal_general_faq_only

medical_consult_app:
- primary: medical_general_basic
- fallback: medical_general_faq_only

academic_study_app:
- primary: general_literacy_basic
- fallback: physics_beginner

# ============================================================
# 8. disclaimer 初期方向
# ============================================================

disclaimer codes:
- general_support_default
- legal_general_default
- medical_general_default
- study_general_default
- historical_reference_default

# ============================================================
# 9. 原則
# ============================================================

- 初期 seed は最小でも caller / scope / routing が成立すること
- Portal top helpdesk は最初から caller として定義する
- BusinessOS AI worker は最初から caller として定義する
- 学問知識 access も初期 seed に含める
