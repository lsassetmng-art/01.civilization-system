# ============================================================
# POCKET SECRETARY DASHBOARD EXACT CONTRACT INTERFACE
# ============================================================

status: draft-additive
type: exact-contract
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Fix the exact Dashboard contract before implementation alignment,
so that the home screen behavior, fallback rules, and required views
remain stable during implementation.

scope:
- DashboardActivity
- activity_dashboard.xml
- home summary bubble
- persona display
- today support information
- entry buttons
- avatar presence area

# ============================================================
# 1. DASHBOARD ROLE
# ============================================================

dashboard_role:
Dashboard is the canonical home of PocketSecretary.

dashboard_responsibility:
- show one primary home summary at most
- show secretary/persona presence
- show compact today-support information
- provide explicit entry points to major home actions
- remain launcher-stable
- remain visually readable on mobile screens

# ============================================================
# 2. REQUIRED VIEW CONTRACT
# ============================================================

required_views:

  - view_id: textHeader
    required: true
    role:
      lightweight home title / home identity label

  - view_id: summaryBubbleContainer
    required: true
    role:
      container for the single primary summary bubble

  - view_id: txtPrimarySummary
    required: true
    role:
      final visible wording of the selected primary summary

  - view_id: txtPersonaDisplayName
    required: true
    role:
      displays current secretary/persona display name

  - view_id: txtTodayCount
    required: true
    role:
      compact count of today items / today schedule count

  - view_id: txtNextEvent
    required: true
    role:
      compact text for the next event or fallback state

  - view_id: btnSelectPersona
    required: true
    role:
      explicit entry to persona / secretary selection flow

  - view_id: btnSelectBackground
    required: true
    role:
      explicit entry to background selection flow

  - view_id: btnSecretaryTools
    required: true
    role:
      explicit entry to secretary tools / utility hub

  - view_id: btnConsultEntry
    required: true
    role:
      explicit entry to consultation flow

  - view_id: avatarHost
    required: true
    role:
      stable host area for right-lower secretary/avatar presence

  - view_id: avatarView
    required: true
    role:
      renderer target for secretary/avatar display

# ============================================================
# 3. PRIMARY SUMMARY CONTRACT
# ============================================================

primary_summary_contract:
- Dashboard shows at most one primary summary at a time
- summaryBubbleContainer exists even when hidden
- txtPrimarySummary is the only main summary text target
- summary text should prefer concise wording first
- multiline is allowed but should remain compact

display_constraints:
- preferred max lines: 3
- summary must not visually compete with the avatar host
- summary must not become a scroll-dependent surface
- summary is the main attention item on the left-upper area

# ============================================================
# 4. PRIMARY SUMMARY VISIBILITY RULE
# ============================================================

show_summary_when:
- at least one valid summary candidate exists
- selected candidate survives suppression rules

hide_summary_when:
- no valid candidate exists
- all candidates are suppressed
- wording resolution yields no safe final output

fallback_when_hidden:
- summaryBubbleContainer may be GONE
or
- summaryBubbleContainer may stay visible with neutral guidance
  only if the implementation intentionally chooses that mode

recommended_default:
hide summaryBubbleContainer when no valid summary exists.

# ============================================================
# 5. PERSONA DISPLAY CONTRACT
# ============================================================

persona_display_contract:
- txtPersonaDisplayName always has a display-safe value
- persona name should be refreshed when returning to dashboard
- persona metadata failure must not crash dashboard

fallback_rule:
if current persona is missing or unresolved,
txtPersonaDisplayName must show a safe fallback label.

recommended_fallback_text:
- "秘書"
or
- another deterministic neutral secretary label

# ============================================================
# 6. TODAY COUNT CONTRACT
# ============================================================

today_count_contract:
- txtTodayCount should show compact today-support information
- today count should prefer readability over raw detail
- count refresh should happen on dashboard refresh points

fallback_rule:
if today data source is unavailable,
txtTodayCount must still render a safe fallback text.

recommended_fallback_text:
- "今日の予定: 0件"

# ============================================================
# 7. NEXT EVENT CONTRACT
# ============================================================

next_event_contract:
- txtNextEvent should show the next relevant event in compact form
- text must remain short enough for dashboard readability
- dashboard should not expand into full schedule detail mode

fallback_rule:
if no upcoming event exists,
txtNextEvent must render a deterministic fallback.

recommended_fallback_text:
- "次予定: なし"

fallback_rule_on_data_failure:
if next event source fails,
txtNextEvent must still render safely and not crash dashboard.

# ============================================================
# 8. ENTRY BUTTON CONTRACT
# ============================================================

entry_button_contract:

  btnSelectPersona:
    destination:
      persona / secretary selection flow
    required_behavior:
      always tappable when screen is usable

  btnSelectBackground:
    destination:
      background selection flow
    required_behavior:
      always tappable when screen is usable

  btnSecretaryTools:
    destination:
      secretary tools / utility hub
    required_behavior:
      always tappable when screen is usable

  btnConsultEntry:
    destination:
      consultation flow
    required_behavior:
      always tappable when screen is usable

general_rule:
- buttons must remain visible enough on small screens
- buttons must not overlap avatar host
- buttons must not depend on hidden summary state

# ============================================================
# 9. AVATAR PRESENCE CONTRACT
# ============================================================

avatar_presence_contract:
- avatarHost and avatarView are always structurally present
- Dashboard keeps the current renderer-host path
- left-side information additions must not remove avatar visibility
- avatar rendering failure must fail soft without crashing launcher

visual_rule:
- avatar area is a persistent presence zone
- it is not the same as the left-side summary zone
- it should remain readable even when left-side content changes

# ============================================================
# 10. REFRESH CONTRACT
# ============================================================

dashboard_refresh_points:
- onCreate:
  bind views, wire entries, initialize stable home state
- onResume:
  refresh persona display, today count, next event, primary summary
- onPause:
  keep renderer lifecycle safe

minimum_refresh_targets:
- txtPersonaDisplayName
- txtTodayCount
- txtNextEvent
- txtPrimarySummary
- summaryBubbleContainer visibility

# ============================================================
# 11. EMPTY / FAILURE CONTRACT
# ============================================================

dashboard_must_not_crash_on:
- missing persona metadata
- no summary candidate
- no upcoming event
- zero today count
- temporary wording resolver miss
- temporary home data source failure

required_failure_behavior:
- fail soft
- keep dashboard usable
- preserve avatar host if possible
- preserve entry buttons

# ============================================================
# 12. SMALL SCREEN CONTRACT
# ============================================================

small_screen_rule:
- primary summary stays readable
- avatar remains visible
- buttons remain tappable
- supporting texts may stay compact
- no requirement for full detail visibility on the dashboard itself

priority_when_space_is_tight:
1. summary bubble
2. avatar presence
3. entry buttons
4. persona display name
5. today count / next event detail

# ============================================================
# 13. IMPLEMENTATION GUARDRAIL
# ============================================================

implementation_guardrail:
- do not create a second competing home contract
- do not move dashboard into a detail screen
- do not make summary visibility depend on unstable data only
- do not force enterprise-only semantics into the base dashboard contract
- do not replace current avatar host path with old bak rendering logic

# ============================================================
# 14. DEFINITION OF CONTRACT FIXED
# ============================================================

contract_is_considered_fixed_when:
- required views are stable
- fallback texts are stable
- hidden / empty summary behavior is stable
- persona / today / next-event behavior is stable
- entry button destinations are stable
- avatar presence area remains stable

# ============================================================
# 15. NEXT BEST ACTION
# ============================================================

next_best_action:
Fix the exact input sources for:
- schedule
- todo
- notification
- travel expense
- general guidance

