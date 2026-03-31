# ============================================================
# CIVILIZATION FACILITY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: facility-ui-implementation
component: civilization-facility-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical implementation design
for facility UI systems inside Civilization.

This document translates
facility UI architecture
and facility UI interface contracts
into implementation behavior.

This document defines:

- screen implementation responsibility
- tab loading behavior
- route-entry behavior
- state handling
- permission application
- issue visibility behavior
- linked facility navigation behavior
- save / cancel / confirm rules
- automation visibility behavior

This document does not redefine:

- business truth
- domain formulas
- policy truth
- lower canonical model truth


# ============================================================
# 2. RELATED DOCUMENTS
# ============================================================

This document must align with:

- CIVILIZATION_FACILITY_UI_ARCHITECTURE
- CIVILIZATION_FACILITY_UI_INTERFACE
- child facility architecture documents
- child facility interface documents


# ============================================================
# 3. SCREEN IMPLEMENTATION STACK
# ============================================================

All facility UIs must implement
the following common screen stack.

- facility_overview_screen
- facility_manage_screen
- facility_issue_screen
- facility_history_screen
- facility_permission_screen

Optional but supported:

- facility_linked_screen
- facility_intervention_screen
- facility_public_view_screen
- facility_network_screen


# ============================================================
# 4. OVERVIEW SCREEN RESPONSIBILITY
# ============================================================

Overview is the canonical entry screen
for a facility.

Overview must implement:

- facility identity visibility
- current summary visibility
- key issue visibility
- KPI summary visibility
- recent history visibility
- fast route entry into manage / issue / history / permission

Overview must not be treated
as the full editing screen.

Overview is for orientation,
status recognition,
and branch navigation.


# ============================================================
# 5. MANAGE SCREEN RESPONSIBILITY
# ============================================================

Manage is the canonical primary operation screen
for a facility.

Manage must implement:

- tab-based editing or management surfaces
- role-based section visibility
- explicit action execution
- explicit confirmation where required
- tab-local issue visibility
- tab-local warning visibility

Manage is the main operational screen.

Domain-specific editing belongs here,
not in overview.


# ============================================================
# 6. ISSUE SCREEN RESPONSIBILITY
# ============================================================

Issue screen must implement:

- explicit issue list
- severity grouping
- issue detail entry
- intervention route entry
- escalation route entry where supported
- current status visibility
- recommended action visibility

Issue screen must not hide
blocking conditions.

Issue handling must remain explicit.


# ============================================================
# 7. HISTORY SCREEN RESPONSIBILITY
# ============================================================

History screen must implement:

- recent event visibility
- actor visibility where permitted
- timestamp visibility
- event summary visibility
- route back to source workflow where appropriate

History is read-oriented.

History is not the primary editing surface.


# ============================================================
# 8. PERMISSION SCREEN RESPONSIBILITY
# ============================================================

Permission screen must implement:

- current access context visibility
- visible scope visibility
- editable scope visibility
- restricted action visibility
- escalation authority visibility where supported

Permission handling must be readable.

Permission logic must not remain hidden
behind silent UI disappearance only.


# ============================================================
# 9. LINKED FACILITY SCREEN RESPONSIBILITY
# ============================================================

Where linked facilities are supported,
the linked facility screen must implement:

- linked facility list
- relation type visibility
- linked facility status visibility
- open linked facility action

Linked facility navigation must preserve
returnability to the source facility context.


# ============================================================
# 10. CANONICAL ENTRY ROUTES
# ============================================================

Facility UI may be entered from:

- city map
- search result
- notification
- linked facility route
- direct route / bookmarked route

All entry routes must normalize
into the same canonical facility entry:

- facility_overview_screen

Deep linking directly into edit tabs
should be avoided by default.

Where deep linking is allowed,
the route must still preserve
facility identity context.


# ============================================================
# 11. ROUTE PARAMETER HANDLING
# ============================================================

Canonical route parameters include:

- facility_id
- facility_type
- canonical_ui_target
- selected_tab where applicable
- source_context where applicable

Implementation must preserve:

- facility identity
- source context when useful
- selected tab only when valid for the target facility
- safe fallback to summary tab when tab is invalid

Invalid tab references must not break routing.


# ============================================================
# 12. COMMON UI STATES
# ============================================================

All facility screens must implement
the following common states:

- loading
- ready
- empty
- warning
- blocked
- partial_data
- error

Implementation must visually distinguish:

- no data
- partial data
- blocked access
- hard error

These states must not be conflated.


# ============================================================
# 13. LOADING BEHAVIOR
# ============================================================

Loading behavior must be explicit.

At minimum:

- initial route load must show loading state
- tab change may show local loading state
- action submit may show submitting state
- partial sections may load independently where appropriate

Loading must not imply success.

A loaded shell with missing sections
must be represented as partial_data
when applicable.


# ============================================================
# 14. EMPTY STATE BEHAVIOR
# ============================================================

Empty state must be used when:

- the screen is valid
- the user has access
- no records or no applicable content exists

Empty state must not be used for:

- permission denial
- system error
- unresolved fetch failure

Those must use blocked or error.


# ============================================================
# 15. BLOCKED STATE BEHAVIOR
# ============================================================

Blocked state must be used when:

- permission is insufficient
- required precondition is missing
- the operation is intentionally unavailable

Blocked state must explain
why the screen or action is blocked.

Blocked state must not silently degrade
into empty state.


# ============================================================
# 16. ERROR STATE BEHAVIOR
# ============================================================

Error state must be used when:

- route resolution fails
- required data load fails
- action execution fails
- unexpected inconsistency is detected

Error state must expose:

- a readable failure summary
- retry where appropriate
- safe back navigation

Error handling must remain explicit.


# ============================================================
# 17. TAB LOADING RULE
# ============================================================

Manage screen tabs must follow
a predictable loading rule.

Recommended implementation behavior:

- overview loads summary-critical data first
- manage loads summary tab first
- non-selected tabs do not require eager heavy loading
- selected tab loads its own data dependencies
- issue indicators may load separately for all tabs where needed

Tab switching must preserve
current facility identity context.


# ============================================================
# 18. TAB VALIDATION RULE
# ============================================================

If a route requests an invalid tab
for the current facility type,
implementation must:

- fall back to summary_tab or first valid tab
- preserve facility route identity
- not crash
- not land on an invisible tab


# ============================================================
# 19. PERMISSION APPLICATION RULE
# ============================================================

Permissions must be applied
at three levels.

1. screen visibility
2. section visibility
3. action availability

Implementation may express restriction via:

- hidden
- disabled
- read-only
- blocked-with-explanation

High-impact actions should prefer
blocked-with-explanation or disabled
over silent disappearance
when user understanding matters.


# ============================================================
# 20. READ-ONLY RULE
# ============================================================

Read-only mode must preserve visibility
of relevant information.

Read-only must disable mutation,
but should still show:

- current state
- issue posture
- history
- linked facilities where allowed

Read-only must not collapse
the screen into empty state.


# ============================================================
# 21. ISSUE VISIBILITY RULE
# ============================================================

Issue visibility is mandatory.

At minimum,
implementation must show issues in:

- overview summary
- manage issue-related sections
- issue screen

Critical issue visibility should appear
even when the user first lands on overview.

Issue presence must not depend
solely on visiting the issue tab.


# ============================================================
# 22. ISSUE BADGE RULE
# ============================================================

Where tabbed manage screens are used,
implementation should support:

- tab-level issue badge
- severity-aware issue badge where appropriate
- critical issue prominence on overview

Badges are visibility aids only.

They do not replace the issue list.


# ============================================================
# 23. KPI VISIBILITY RULE
# ============================================================

KPI visibility is mandatory
for operational facility UIs.

Implementation should support:

- compact KPI strip on overview
- fuller KPI panel in KPI tab
- warning or trend marker where available

KPI display must never imply
that formulas are defined here.

This layer only controls exposure.


# ============================================================
# 24. WARNING VISIBILITY RULE
# ============================================================

Warnings must be visible
before users trigger mutation actions.

Implementation should support:

- summary warning banner
- section-local warning text
- action-adjacent warning messaging where needed

Warnings must remain distinct from errors.


# ============================================================
# 25. ACTION EXECUTION RULE
# ============================================================

All mutation actions must be explicit.

Typical mutation actions include:

- save
- assign
- reassign
- intervene
- escalate
- pause automation
- resume automation
- reprioritize
- publish / update where supported

Mutation actions must not auto-fire
on tab entry or passive viewing.


# ============================================================
# 26. SAVE / CANCEL / CONFIRM RULE
# ============================================================

Implementation must distinguish:

- save
- cancel
- confirm

Save:
commits editable changes.

Cancel:
discards current unsaved changes
in the current edit context.

Confirm:
explicitly accepts a high-impact action.

High-impact actions should not rely
on save alone when confirmation is needed.


# ============================================================
# 27. UNSAVED CHANGES RULE
# ============================================================

Where edit forms exist,
implementation should support
unsaved change detection.

If the user attempts to leave
the current edit context with unsaved changes,
the UI should present:

- save
- discard
- stay

This rule applies especially to:

- builder-like setup screens
- editor-style tabs
- policy or automation settings


# ============================================================
# 28. AUTOMATION VISIBILITY RULE
# ============================================================

Automation must remain visible.

Implementation must expose:

- automation enabled / disabled state
- active policy profile where applicable
- recent automated change summary where supported
- drift or warning indicators where supported

Automation must never behave
as an invisible background controller only.


# ============================================================
# 29. AUTOMATION CONTROL RULE
# ============================================================

Where supported,
automation controls must be explicit.

Typical supported actions:

- pause automation
- resume automation
- open automation detail
- view last automated change

Pause / resume must require
clear action intent from the user.


# ============================================================
# 30. HISTORY APPEND RULE
# ============================================================

UI-triggered meaningful changes
should result in history visibility.

At minimum,
history should reflect:

- save actions of consequence
- intervention actions
- escalation actions
- automation state changes where visible
- major assignment changes

This document does not define
the lower event model,
only the implementation expectation
that history remains visible.


# ============================================================
# 31. LINKED FACILITY NAVIGATION RULE
# ============================================================

Linked facility navigation must preserve
source traceability.

When the user opens a linked facility,
the implementation should preserve:

- source facility identity
- link relation context where useful
- safe back behavior

The user must be able to return
without losing orientation.


# ============================================================
# 32. SEARCH ENTRY RULE
# ============================================================

If the user enters a facility from search,
the implementation should:

- route to facility overview
- preserve search-origin context where helpful
- not force immediate deep editing

Search is an entry route,
not a mode change.


# ============================================================
# 33. NOTIFICATION ENTRY RULE
# ============================================================

If the user enters from notification,
the implementation may preserve
notification context and highlight
the relevant issue or target section.

However,
the canonical entry remains:

- facility overview
or
- issue screen when the notification is explicitly issue-rooted

Deep issue entry is allowed
only when it improves clarity.


# ============================================================
# 34. MAP ENTRY RULE
# ============================================================

If the user enters a facility from city map,
implementation should preserve
spatial orientation context where useful.

Map entry is the most natural facility entry route.

It should remain fast,
summary-first,
and low-friction.


# ============================================================
# 35. DIRECT LINK ENTRY RULE
# ============================================================

If the user enters through a direct link
or bookmark,
the implementation must validate:

- facility existence
- facility type compatibility
- selected tab compatibility
- permission compatibility

If validation fails,
the UI must fall back safely
or show blocked / error state explicitly.


# ============================================================
# 36. SECTION REFRESH RULE
# ============================================================

Implementation should avoid
full-screen refetch for every small action
when section-local refresh is sufficient.

Recommended behavior:

- local action refreshes local section first
- critical summary indicators refresh when relevant
- issue count refreshes when issue state changes
- KPI refreshes when KPI-affecting action completes where appropriate

Refresh strategy must remain understandable.


# ============================================================
# 37. PARTIAL DATA RULE
# ============================================================

If some sections succeed
and others fail or remain unavailable,
the screen may use partial_data state.

Partial data must show:

- what is available
- what is missing
- whether retry is possible

Partial data must not pretend
the whole screen is fully ready.


# ============================================================
# 38. CHILD DOCUMENT RULE
# ============================================================

All child facility UI implementation documents
must inherit this document.

Child documents should define:

- domain-specific initial load priority
- tab-specific fetch behavior
- tab-specific action ordering
- domain-specific issue handling
- domain-specific role behavior
- linked-system entry behavior where relevant


# ============================================================
# 39. RECOMMENDED CHILD IMPLEMENTATION ORDER
# ============================================================

Recommended implementation expansion order:

1. retail
2. housing and residence
3. real estate
4. streamer agency
5. government and civic service
6. remaining facility families


# ============================================================
# 40. FINAL RULE
# ============================================================

Facility UI implementation in Civilization must remain:

- overview-first
- issue-visible
- permission-explicit
- state-explicit
- route-safe
- automation-visible
- linked-navigation-safe
- implementation-ready without redefining domain truth
