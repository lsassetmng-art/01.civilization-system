# ============================================================
# EDUCATION UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: education-work-ui
component: education-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- School Overview
- Classes and Grades
- Teachers
- Curriculum
- Exams and Evaluation
- Guidance and Support
- Events and Ceremonies
- Incidents
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- School Overview must summarize performance, staffing, support risk, and events together
- Classes and Grades must show both academic and guidance burden
- Teachers must show load and burnout risk clearly
- Curriculum must show track identity, not just subject totals
- Exams and Evaluation must show progression consequences
- Guidance and Support must show who is being carried, filtered, or lost
- Events and Ceremonies must show prestige and staffing tradeoffs
- Incidents must support quick intervention without hiding long-term student impact
- Results must expose academic, social, and progression consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Education UI must teach the player
that school success depends on
instruction, support, discipline,
and future-routing together.
