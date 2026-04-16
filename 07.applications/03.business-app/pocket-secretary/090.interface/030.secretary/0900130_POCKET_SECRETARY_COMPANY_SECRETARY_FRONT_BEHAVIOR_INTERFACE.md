# ============================================================
# POCKET SECRETARY COMPANY SECRETARY FRONT BEHAVIOR INTERFACE
# ============================================================

status: draft-additive
type: front-behavior-interface
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Fix the front behavior for personal_ai and company_ai usage
inside PocketSecretary,
so that Enterprise secretary behavior remains stable before implementation.

scope:
- personal secretary display behavior
- company secretary display behavior
- switching behavior
- simultaneous presence rule
- plan gating behavior
- fallback behavior

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

core_principles:
- personal secretary and company secretary are not the same role
- personal secretary remains the default secretary identity of PocketSecretary
- company secretary is an enterprise/business support secretary
- company secretary consumption is additive, not a replacement of personal secretary identity
- authentication/authorization for company secretary usage remains separate from mere display ability

# ============================================================
# 2. SECRETARY TYPES
# ============================================================

secretary_types:

  personal_ai:
    meaning:
      user-facing personal secretary identity
    ownership_side:
      persona-facing / personal scope
    default_presence:
      yes

  company_ai:
    meaning:
      company secretary consumed from BusinessOS company_secretary capability
    ownership_side:
      enterprise / business scope
    default_presence:
      no

# ============================================================
# 3. PLAN GATING RULE
# ============================================================

plan_gating:

  free:
    personal_ai_display:
      allowed
    personal_ai_consultation:
      not_allowed
    company_ai_display:
      not_allowed
    company_ai_consultation:
      not_allowed

  pro:
    personal_ai_display:
      allowed
    personal_ai_consultation:
      allowed
    company_ai_display:
      not_allowed
    company_ai_consultation:
      not_allowed

  enterprise:
    personal_ai_display:
      allowed
    personal_ai_consultation:
      allowed
    company_ai_display:
      allowed
    company_ai_consultation:
      allowed_conditionally_by_business_context

meaning:
- personal_ai remains available across plans by display scope
- company_ai is enterprise-only
- enterprise does not remove personal_ai

# ============================================================
# 4. DEFAULT HOME BEHAVIOR
# ============================================================

default_home_behavior:
- Dashboard primary secretary presence is personal_ai by default
- company_ai does not silently replace personal_ai on home
- enterprise support capability may be surfaced as an additional entry or mode,
  not as an involuntary forced swap

reason:
PocketSecretary core identity is still personal secretary centered,
even when enterprise capability exists.

# ============================================================
# 5. WHEN personal_ai IS SHOWN
# ============================================================

personal_ai_display_rule:
- shown by default on Dashboard
- shown in normal personal guidance
- shown in standard home summary wording
- shown in non-enterprise flows
- shown whenever company context is absent or not active

personal_ai_consultation_rule:
- free:
  display-only
- pro:
  consultation allowed
- enterprise:
  consultation allowed

# ============================================================
# 6. WHEN company_ai IS SHOWN
# ============================================================

company_ai_display_rule:
- shown only in enterprise plan
- shown only when a valid company context exists
- shown only when company secretary capability is available
- shown when user explicitly enters company/business support flow
- may be surfaced in business draft / request / company guidance contexts

company_ai_consultation_rule:
- requires enterprise plan
- requires valid company context
- requires company secretary capability availability
- requires destination business scope authorization where applicable

company_ai_must_not_be_shown_as_default_when:
- user is in free or pro plan
- no active company context exists
- company secretary capability is unavailable
- business scope authorization is invalid or expired

# ============================================================
# 7. SWITCHING RULE
# ============================================================

switching_rule:
- switching between personal_ai and company_ai must be explicit
- implicit silent role replacement is not allowed as the default behavior
- user must understand whether the active support mode is personal or company scope

recommended_switch_surface:
- explicit business support entry
or
- explicit secretary scope toggle
or
- explicit company guidance action entry

switching_visibility_rule:
- switching control appears only when company_ai is actually available
- free/pro plans should not show dead enterprise switching controls

# ============================================================
# 8. SIMULTANEOUS PRESENCE RULE
# ============================================================

simultaneous_presence_rule:
- simultaneous functional presence is allowed at the capability level
- simultaneous visual main-presence rendering is not required on the base Dashboard
- Dashboard keeps one main visible secretary presence zone
- company_ai may be represented as a separate entry, badge, mode label, or action surface,
  rather than as a second full-time avatar on the same home base layout

meaning:
- both scopes may exist in the application
- base Dashboard should avoid two competing main presences by default

recommended_default:
- one main visible secretary presence on Dashboard
- company_ai available through explicit business support surface

# ============================================================
# 9. HOME SUMMARY BEHAVIOR
# ============================================================

home_summary_rule:
- base home summary is personal_ai-oriented by default
- company_ai-related summary may appear only when enterprise business context is active
- company guidance must not pollute non-enterprise or non-business home flow
- enterprise business summaries must still obey one-primary-summary rule

priority_interpretation:
- company_ai does not automatically outrank all personal summaries
- it must enter the same explicit summary selection framework
- future business-specific summary candidates require explicit contract update

# ============================================================
# 10. CONSULTATION SURFACE RULE
# ============================================================

consultation_surface_rule:

  personal_consultation:
    meaning:
      personal secretary consultation
    default_entry:
      standard consult entry

  company_consultation:
    meaning:
      enterprise business/company secretary consultation
    default_entry:
      separate business/company support entry
    requirement:
      active company context + enterprise capability + authorization validity

recommended_ui_rule:
- do not merge personal consult and company consult into one ambiguous unlabeled surface
- user should know which secretary scope is active

# ============================================================
# 11. LABELING RULE
# ============================================================

labeling_rule:
- personal secretary surfaces should remain clearly personal-facing
- company secretary surfaces should be labeled as company/business support
- local display name for company secretary may be customized
- company role naming may be customized locally
- label customization must not hide the company-scope nature of the role

# ============================================================
# 12. FAILURE / FALLBACK RULE
# ============================================================

fallback_rule:
- if company_ai is unavailable, PocketSecretary falls back to personal_ai-centered behavior
- if company context is invalid, company secretary flow must fail closed
- if company secretary authorization fails, company secretary action must not proceed
- base Dashboard remains usable even when company capability is absent

must_not_happen:
- silent escalation from personal_ai to company_ai
- silent use of expired company context
- misleading unlabeled company guidance in personal-only mode

# ============================================================
# 13. MINIMUM IMPLEMENTATION RULE
# ============================================================

minimum_implementation_rule:
- Dashboard main presence stays personal_ai
- enterprise may expose company_ai through a separate explicit business entry
- simultaneous dual-avatar home rendering is not required in minimum implementation
- company_ai visual/presence expansion may be a later enhancement

# ============================================================
# 14. DEFINITION OF BEHAVIOR FIXED
# ============================================================

behavior_is_fixed_when:
- personal_ai default behavior is explicit
- company_ai display conditions are explicit
- switching is explicit
- simultaneous presence rule is explicit
- enterprise gating is explicit
- fallback on missing company capability is explicit

# ============================================================
# 15. NEXT BEST ACTION
# ============================================================

next_best_action:
Fix PocketSecretary implementation completion definition:
- MVP mandatory
- initial release mandatory
- enterprise deferred items
- allowed stubs

