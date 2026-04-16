# ============================================================
# POCKET SECRETARY P0 ALIGNMENT TARGETS
# ============================================================

status: draft
type: p0-alignment-targets
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Extract only the highest-priority alignment targets
from the ideal-to-existing mapping,
so implementation can begin from the most important files first.

p0_definition:
P0 means:
- must align before broader implementation proceeds
- directly affects home identity and implementation stability
- blocks coherent secretary-home experience if left unresolved

# ============================================================
# 1. P0 TARGET SUMMARY
# ============================================================

p0_domains:
- dashboard_home
- summary_priority

implementation_meaning:
PocketSecretary should first stabilize:
1. canonical home shape
2. one-primary-summary behavior

# ============================================================
# 2. P0-001 DASHBOARD_HOME
# ============================================================

mapping_id:
MAP-001 / FILE-MAP-001

domain:
dashboard_home

ideal:
Dashboard is the canonical home.
It must show:
- one primary summary
- persona display
- today support info
- entry buttons
- avatar presence

existing_files:
- app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/DashboardActivity.java
- app/src/main/res/layout/activity_dashboard.xml
- app/src/main/java/com/lsam/pocketsecretary/ui/today/TodaySummaryActivity.java
- app/src/main/java/com/lsam/pocketsecretary/ui/hub/AllFeaturesActivity.java
- backup/reference:
  DashboardActivity.java.bak*

status:
partial

main_gap:
- current Dashboard is thinner than ideal
- exact dashboard contract is not fully reflected in runtime
- useful home signals remain partly in bak/reference side

required_alignment:
- keep current renderer host
- keep Dashboard as launcher-stable home
- align activity_dashboard.xml to exact contract
- align DashboardActivity to exact contract
- recover persona/today/next-event meaning
- preserve entry-button reachability
- keep avatar presence visible

must_fix_files:
- DashboardActivity.java
- activity_dashboard.xml

supporting_reference_files:
- TodaySummaryActivity.java
- AllFeaturesActivity.java
- DashboardActivity.java.bak*

not_primary_fix_target_now:
- TodaySummaryActivity.java
- AllFeaturesActivity.java

reason:
These are supporting/home-adjacent files,
but Dashboard itself is the canonical home.

done_when:
- Dashboard exact contract is reflected in implementation
- summary/persona/today/buttons/avatar all behave safely
- launcher stability remains intact

# ============================================================
# 3. P0-002 SUMMARY_PRIORITY
# ============================================================

mapping_id:
MAP-002 / FILE-MAP-002

domain:
summary_priority

ideal:
Exactly one primary summary is selected by canonical priority:
1. upcoming schedule within 30 minutes
2. due-today unfinished todo
3. important notification
4. unresolved travel expense
5. general secretary guidance

existing_files:
- app/src/main/java/com/lsam/pocketsecretary/ui/today/TodayEngine.java
- app/src/main/java/com/lsam/pocketsecretary/ui/today/UpcomingEventPicker.java
- app/src/main/java/com/lsam/pocketsecretary/data/todo/*
- app/src/main/java/com/lsam/pocketsecretary/notification/*
- helper additions / alignment target:
  ui/dashboard/home/HomeSummaryItem.java
  ui/dashboard/home/HomeSummaryPriorityPolicy.java
  ui/dashboard/home/HomeSummarySelector.java

status:
partial

main_gap:
- exact selector flow not fully connected
- source model is fixed in design but not fully reflected in runtime
- travel expense source is placeholder

required_alignment:
- keep fixed source model
- implement selector around existing schedule/todo/notification families
- allow travel expense as placeholder
- produce general guidance as final fallback
- connect selected summary into Dashboard

must_fix_files:
- DashboardActivity.java
- ui/dashboard/home/HomeSummaryItem.java
- ui/dashboard/home/HomeSummaryPriorityPolicy.java
- ui/dashboard/home/HomeSummarySelector.java

supporting_source_families:
- TodayEngine.java
- UpcomingEventPicker.java
- todo local domain
- notification local domain

not_required_for_first_p0_pass:
- travel expense runtime completion

reason:
travel expense is already fixed as placeholder-safe.
It must not block core selector implementation.

done_when:
- one selected summary or null is returned safely
- Dashboard can bind the selected summary
- higher-priority actionable items beat lower-priority items
- empty/no-source state falls back safely

# ============================================================
# 4. P0 FILE ACTION VIEW
# ============================================================

p0_file_actions:

  - file: app/src/main/res/layout/activity_dashboard.xml
    action:
      - align to exact dashboard contract
      - verify required ids
      - preserve avatar host visibility
      - preserve mobile readability

  - file: app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/DashboardActivity.java
    action:
      - bind exact dashboard contract
      - recover persona/today/next-event meaning
      - call summary selector
      - bind one primary summary
      - keep renderer lifecycle intact

  - file: app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummaryItem.java
    action:
      - normalize candidate item structure

  - file: app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummaryPriorityPolicy.java
    action:
      - encode canonical score order

  - file: app/src/main/java/com/lsam/pocketsecretary/ui/dashboard/home/HomeSummarySelector.java
    action:
      - select one best candidate
      - keep placeholder-safe behavior

# ============================================================
# 5. P0 OUT OF SCOPE FOR FIRST PASS
# ============================================================

out_of_scope_for_first_p0_pass:
- full Deep Link runtime completion
- full company secretary runtime wiring
- full enterprise business flow completion
- full iPhone runtime completion
- advanced travel expense runtime connection
- advanced wording expansion beyond minimum dictionary

# ============================================================
# 6. ONE-LINE JUDGMENT
# ============================================================

judgment:
PocketSecretary P0 alignment should begin with
DashboardActivity.java and activity_dashboard.xml,
then immediately connect one-primary-summary logic
through the HomeSummary* helper set.

