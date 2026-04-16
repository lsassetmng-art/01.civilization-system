# ============================================================
# POCKET SECRETARY P0 IMPLEMENTATION RUNBOOK
# ============================================================

status: draft
type: p0-implementation-runbook
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Define the practical first-pass implementation runbook
for PocketSecretary P0 alignment.

p0_scope:
- activity_dashboard.xml
- DashboardActivity.java
- HomeSummaryItem.java
- HomeSummaryPriorityPolicy.java
- HomeSummarySelector.java

goal:
Stabilize the canonical Dashboard shell,
then attach one-primary-summary logic safely.

# ============================================================
# 1. EXECUTION PRINCIPLE
# ============================================================

principles:
- keep launcher stability first
- keep current avatar renderer path first
- patch in small units
- confirm after each unit
- do not widen scope into enterprise/runtime extras during first pass

# ============================================================
# 2. STEP ORDER
# ============================================================

step_1:
target:
- activity_dashboard.xml

work:
- verify required ids exist
- align left-side information area
- preserve avatarHost / avatarView
- preserve mobile readability

done_check:
- layout has exact required ids
- avatar zone still exists
- no second competing home layout is introduced

# ------------------------------------------------------------

step_2:
target:
- DashboardActivity.java

work:
- bind exact dashboard views
- wire btnSelectPersona
- wire btnSelectBackground
- wire btnSecretaryTools
- wire btnConsultEntry

done_check:
- dashboard compiles
- no renderer lifecycle regression
- entry buttons are structurally reachable

# ------------------------------------------------------------

step_3:
target:
- DashboardActivity.java

work:
- restore persona display text behavior
- restore today count behavior
- restore next event behavior
- keep safe fallback text behavior

done_check:
- txtPersonaDisplayName safe fallback works
- txtTodayCount safe fallback works
- txtNextEvent safe fallback works
- empty/no-data case does not break home

# ------------------------------------------------------------

step_4:
target:
- HomeSummaryItem.java

work:
- normalize candidate item structure
- keep item plain and small

done_check:
- selector-ready candidate model exists
- no Android view dependency is introduced

# ------------------------------------------------------------

step_5:
target:
- HomeSummaryPriorityPolicy.java

work:
- encode canonical score order
- keep comparison deterministic

done_check:
- score policy exists outside DashboardActivity
- candidate priority is no longer implicit

# ------------------------------------------------------------

step_6:
target:
- HomeSummarySelector.java

work:
- accept candidate list
- return best candidate or null
- remain placeholder-safe for missing travel expense source

done_check:
- selector safely handles empty input
- one best item or null is returned

# ------------------------------------------------------------

step_7:
target:
- DashboardActivity.java

work:
- call HomeSummarySelector
- bind txtPrimarySummary
- bind summaryBubbleContainer visibility
- keep safe no-candidate behavior

done_check:
- exactly one primary summary can be shown
- no candidate -> safe hidden or neutral state
- Dashboard remains launcher-stable

# ============================================================
# 3. REQUIRED CHECKPOINTS
# ============================================================

checkpoint_A_after_step_1:
- XML ids confirmed
- no avatar host loss
- home layout still readable

checkpoint_B_after_step_3:
- Dashboard still launches
- avatar presence still works
- persona / today / next-event text safe

checkpoint_C_after_step_7:
- one-primary-summary behavior works
- empty-state safe
- no major regression in home navigation

# ============================================================
# 4. FIRST-PASS STOP CONDITIONS
# ============================================================

stop_and_fix_immediately_if:
- Dashboard stops launching
- avatar presence disappears entirely
- required dashboard ids break
- renderer lifecycle regresses
- entry buttons become unreachable
- summary logic crashes on empty input

# ============================================================
# 5. FIRST-PASS OUT OF SCOPE
# ============================================================

out_of_scope:
- full secretary wording runtime hookup
- full quiet-hours logic
- full duplicate suppression history
- full travel expense source implementation
- full deep link runtime launcher
- full company secretary runtime behavior
- full iPhone runtime implementation

# ============================================================
# 6. SUCCESS CONDITION
# ============================================================

success_condition:
P0 first pass is successful when:
- Dashboard shell is stable
- avatar presence remains intact
- persona / today / next-event support texts are safe
- one-primary-summary behavior is attached
- only non-P0 items remain open

# ============================================================
# 7. NEXT BEST ACTION
# ============================================================

next_best_action:
Create the implementation-ready task sheet
that assigns each step to exact files and exact edit intent.

