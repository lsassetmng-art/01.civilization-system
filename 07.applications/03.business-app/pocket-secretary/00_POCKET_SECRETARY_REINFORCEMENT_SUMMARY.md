# ============================================================
# POCKET SECRETARY REINFORCEMENT SUMMARY
# ============================================================

status: draft-additive-summary
type: integrated-reinforcement-summary
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Integrate the reinforcement points fixed after PocketSecretary design completion,
so that implementation alignment can proceed with a single reference summary.

scope:
- dashboard exact contract
- home summary source model
- minimum secretary wording dictionary
- deep link exact payload contract
- company secretary front behavior
- implementation completion definition

# ============================================================
# 1. CURRENT JUDGMENT
# ============================================================

current_judgment:
PocketSecretary design is complete enough to be treated as design-complete.
The following reinforcements were added to reduce implementation ambiguity.

core_direction:
- PocketSecretary is not a zero-from-scratch app
- existing source alignment + missing implementation addition is the correct path
- Dashboard is the canonical home
- personal secretary remains the default home identity
- enterprise/business expansion is additive

# ============================================================
# 2. DASHBOARD EXACT CONTRACT
# ============================================================

dashboard_role:
Dashboard is the canonical home of PocketSecretary.

required_views:
- textHeader
- summaryBubbleContainer
- txtPrimarySummary
- txtPersonaDisplayName
- txtTodayCount
- txtNextEvent
- btnSelectPersona
- btnSelectBackground
- btnSecretaryTools
- btnConsultEntry
- avatarHost
- avatarView

dashboard_rules:
- show at most one primary summary
- preserve right-lower avatar presence zone
- preserve entry buttons regardless of summary state
- fail soft on missing persona/event/summary data
- small screen priority:
  1. summary bubble
  2. avatar presence
  3. entry buttons
  4. persona display name
  5. today count / next event detail

recommended_fallbacks:
- persona fallback:
  "秘書"
- today count fallback:
  "今日の予定: 0件"
- next event fallback:
  "次予定: なし"

# ============================================================
# 3. HOME SUMMARY SOURCE MODEL
# ============================================================

canonical_summary_priority:
1. upcoming schedule within 30 minutes
2. due-today unfinished todo
3. important notification
4. unresolved travel expense
5. general secretary guidance

base_scores:
- upcoming schedule within 30 minutes: 100
- due-today unfinished todo: 80
- important notification: 70
- unresolved travel expense: 60
- general secretary guidance: 10

fixed_source_families:

  upcoming_schedule_within_30_minutes:
    source_family:
      - TodayEngine
      - UpcomingEventPicker
    status:
      available

  due_today_unfinished_todo:
    source_family:
      - PocketSecretary todo local domain
    status:
      available_or_partially_available

  important_notification:
    source_family:
      - PocketSecretary notification local domain
      - notification center / helper side state
    status:
      available_or_partially_available

  unresolved_travel_expense:
    source_family:
      - PocketSecretary travel expense domain
    status:
      placeholder

  general_secretary_guidance:
    source_family:
      - dashboard fallback provider
      - secretary guidance fallback builder
    status:
      available_as_fallback

source_rules:
- each summary type has one primary source family
- missing source produces no candidate, not a crash
- general guidance is the final fallback only

# ============================================================
# 4. MINIMUM SECRETARY WORDING DICTIONARY
# ============================================================

target_secretaries:
- sato_misaki
- takahashi_hina
- kamiya_rin

minimum_message_types:
- schedule_notice
- todo_notice
- notification_notice
- error_soft
- general_guidance

style_summary:

  sato_misaki:
    - standard
    - calm
    - rational

  takahashi_hina:
    - empathy
    - soft
    - personal-support

  kamiya_rin:
    - sharp
    - concise
    - work-support

minimum_dictionary_examples:

  sato_misaki.schedule_notice.default:
    まもなく予定です。ご確認ください。

  takahashi_hina.todo_notice.default:
    今日のToDoが残っています。少しずつ進めていきましょう。

  kamiya_rin.notification_notice.default:
    重要なお知らせがあります。確認を推奨します。

fallback_rule:
1. secretary-specific wording
2. neutral wording for message type
3. hard-safe fixed fallback string

dashboard_wording_rule:
- wording remains compact
- wording fits summary bubble
- meaning remains stable across secretaries

# ============================================================
# 5. DEEP LINK EXACT PAYLOAD CONTRACT
# ============================================================

targets:
- EstimateCreator
- NameCardManager

common_principles:
- explicit app launch only
- launch success != business success
- auth inheritance != authorization success
- invalid / expired context must fail closed
- install guidance shown if target app unavailable
- no web fallback

common_required_fields:
- mode
- company_context_id
- handoff_source

common_optional_fields:
- auth_inheritance_context
- launch_timestamp
- contract_version

fixed_handoff_source:
- pocket_secretary

estimatecreator_contract:
  scheme:
    estimatecreator
  path:
    entry
  mode_allowed_values:
    - estimate_entry
    - sales_memo_entry
    - meeting_memo_entry
    - generic_business_entry
  optional:
    - customer_reference

namecardmanager_contract:
  scheme:
    namecardmanager
  path:
    entry
  mode_allowed_values:
    - search
    - new
    - detail
    - related_people
    - related_cases
    - generic_entry
  optional:
    - keyword
    - card_id

auth_inheritance_context_fields:
- authenticated_user_id
- company_context_id
- business_session_id
- handoff_source
- issued_at
- expires_at
- context_status

must_not_inherit:
- unsaved_editor_state
- approval_completed_state
- submission_success_state
- temporary_ui_state

# ============================================================
# 6. COMPANY SECRETARY FRONT BEHAVIOR
# ============================================================

core_rule:
- personal_ai and company_ai are different roles
- personal_ai remains default home secretary identity
- company_ai is additive enterprise/business support
- company_ai does not silently replace personal_ai

plan_gating:

  free:
    personal_ai_display: allowed
    personal_ai_consultation: not_allowed
    company_ai_display: not_allowed
    company_ai_consultation: not_allowed

  pro:
    personal_ai_display: allowed
    personal_ai_consultation: allowed
    company_ai_display: not_allowed
    company_ai_consultation: not_allowed

  enterprise:
    personal_ai_display: allowed
    personal_ai_consultation: allowed
    company_ai_display: allowed
    company_ai_consultation: allowed_conditionally_by_business_context

home_behavior:
- Dashboard main visible presence remains personal_ai by default
- company_ai is surfaced through explicit business/company support entry
- base Dashboard does not require dual main-avatar rendering

switching_rule:
- switching must be explicit
- no silent forced swap
- user must understand whether support mode is personal or company scope

fallback_rule:
- if company_ai unavailable, fall back to personal_ai-centered behavior
- invalid company context must fail closed
- base Dashboard remains usable without company capability

# ============================================================
# 7. IMPLEMENTATION COMPLETION DEFINITION
# ============================================================

mvp_mandatory:
- stable Dashboard launch
- avatar/secretary presence visible
- one primary summary bubble works
- persona display name works
- today count works
- next event fallback works
- persona/background/tools/consult entries work
- personal_ai display is stable
- soft failure on missing summary/persona/event

initial_release_mandatory:
- Dashboard exact contract aligned
- summary source alignment completed
- secretary wording minimum set usable
- quiet-hours baseline exists
- install guidance base behavior exists
- secretary-home UX feels coherent

enterprise_deferred_allowed:
- full company_ai home expansion
- full auth inheritance runtime integration
- full EstimateCreator deep link implementation
- full NameCardManager deep link implementation
- full ERP draft/request flow completion
- full advanced company secretary consultation branching
- iPhone implementation completion

allowed_stubs:
- deeper enterprise-only flows
- travel expense summary source
- advanced auth inheritance runtime connection
- advanced external app orchestration
- advanced company secretary visual expansion

not_allowed_stubs:
- Dashboard launcher stability
- visible secretary/avatar home presence
- required dashboard views
- base summary bubble behavior
- persona/background/consult entry reachability
- base wording fallback
- empty-state safety

# ============================================================
# 8. OVERALL IMPLEMENTATION INTERPRETATION
# ============================================================

implementation_interpretation:
PocketSecretary should first be judged by
stable personal secretary home usability,
then by coherent initial release quality,
and only after that by deeper enterprise/business expansion.

correct_path:
- align existing source to design
- add missing reinforced contracts
- keep enterprise/business growth additive
- preserve home/secretary identity coherence

# ============================================================
# 9. ONE-LINE JUDGMENT
# ============================================================

judgment:
PocketSecretary design is complete,
and the main implementation ambiguities have now been reduced
through exact contract fixing,
source fixing,
minimum wording fixing,
deep link payload fixing,
company secretary front behavior fixing,
and completion definition fixing.

