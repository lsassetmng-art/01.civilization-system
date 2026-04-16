# ============================================================
# POCKET SECRETARY P0 FIX UNIT PLAN
# ============================================================

status: draft
type: p0-fix-unit-plan
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Break P0 alignment into concrete fix units,
so implementation can proceed file-by-file
without ambiguity.

p0_scope:
- DashboardActivity.java
- activity_dashboard.xml
- HomeSummaryItem.java
- HomeSummaryPriorityPolicy.java
- HomeSummarySelector.java

# ============================================================
# 1. FIX UNIT PRINCIPLE
# ============================================================

principles:
- additive first
- keep launcher stability first
- keep current avatar renderer path first
- recover useful meaning from existing/bak sources selectively
- do not broaden scope into enterprise/business runtime yet

# ============================================================
# 2. FIX UNIT: activity_dashboard.xml
# ============================================================

file:
app/src/main/res/layout/activity_dashboard.xml

keep:
- textHeader
- avatarHost
- avatarView
- base home layout role
- right-lower avatar presence zone

add_or_align:
- summaryBubbleContainer
- txtPrimarySummary
- txtPersonaDisplayName
- txtTodayCount
- txtNextEvent
- btnSelectPersona
- btnSelectBackground
- btnSecretaryTools
- btnConsultEntry

do_not_do_now:
- second competing home layout
- dual main-avatar layout
- enterprise-only dashboard branching
- overly dense detailed schedule UI

done_when:
- required ids exist
- left-side info is readable
- right-side avatar remains visible
- layout still behaves as home, not detail screen

# ============================================================
# 3. FIX UNIT: DashboardActivity.java
# ============================================================

file:
app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/DashboardActivity.java

keep:
- BaseActivity inheritance
- launcher home role
- current renderer lifecycle path
- avatar host binding path
- stable onCreate / onResume / onPause shape

add_or_align:
- bind exact dashboard views
- refresh persona display text
- refresh today count
- refresh next event text
- build/select one primary summary
- bind summary visibility
- wire persona/background/tools/consult entry buttons

recover_meaning_from_existing_or_bak:
- persona display synchronization
- today count concept
- next event concept
- safe home refresh behavior

do_not_do_now:
- full deep link runtime integration
- company secretary runtime branching
- advanced enterprise route orchestration
- heavy business logic inside activity

done_when:
- dashboard remains launcher-stable
- avatar still renders
- persona/today/next event render safely
- one primary summary can appear
- entry buttons work

# ============================================================
# 4. FIX UNIT: HomeSummaryItem.java
# ============================================================

file:
app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummaryItem.java

role:
normalized candidate item model

must_hold:
- summaryType
- baseScore
- displayTextSeed
- eventTime
- updatedAt
- urgent
- quietHoursSuppressible
- duplicateSuppressionKey

do_not_do_now:
- heavy framework coupling
- direct android view logic

done_when:
- selector input can be normalized cleanly

# ============================================================
# 5. FIX UNIT: HomeSummaryPriorityPolicy.java
# ============================================================

file:
app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummaryPriorityPolicy.java

role:
canonical score and comparison policy

must_encode:
- upcoming schedule within 30 minutes: 100
- due-today unfinished todo: 80
- important notification: 70
- unresolved travel expense: 60
- general secretary guidance: 10

future_ready_but_not_required_now:
- tie-break by deadline/start time
- tie-break by updated_at
- least recently shown
- quiet-hours weighting
- duplicate suppression refinement

done_when:
- candidate comparison is deterministic
- policy is not hardcoded in DashboardActivity

# ============================================================
# 6. FIX UNIT: HomeSummarySelector.java
# ============================================================

file:
app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummarySelector.java

role:
return one selected summary item or null

must_do_now:
- accept candidate items
- ignore null/empty input safely
- sort by priority policy
- return best candidate or null

allowed_placeholder_behavior:
- travel expense candidate may be absent
- if no valid stronger candidate exists,
  general guidance may be used as fallback
- if nothing qualifies, null is acceptable

do_not_do_now:
- full persistence-based suppression history
- advanced enterprise summary sources
- business-specific override branches

done_when:
- one best candidate or null is returned safely
- selector can be called from DashboardActivity

# ============================================================
# 7. P0 IMPLEMENTATION ORDER
# ============================================================

implementation_order:
1. activity_dashboard.xml
2. DashboardActivity.java view binding + entry buttons
3. DashboardActivity.java persona/today/next event refresh
4. HomeSummaryItem.java
5. HomeSummaryPriorityPolicy.java
6. HomeSummarySelector.java
7. DashboardActivity.java summary binding hookup

reason:
UI contract must exist before logic can bind to it.

# ============================================================
# 8. FIRST-PASS OUT OF SCOPE
# ============================================================

out_of_scope:
- full wording resolver runtime connection
- full quiet-hours runtime logic
- full duplicate suppression history
- full travel expense source
- full company_ai runtime behavior
- full deep link runtime launcher
- iPhone runtime implementation

# ============================================================
# 9. ONE-LINE JUDGMENT
# ============================================================

judgment:
The first practical P0 implementation pass should
stabilize the Dashboard shell first,
then attach one-primary-summary logic through small helper units.

