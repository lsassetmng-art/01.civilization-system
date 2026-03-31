# ============================================================
# GOVERNMENT AND CIVIC SERVICE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: government-and-civic-service-ui-implementation
component: government-and-civic-service-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for government and civic service UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- GOVERNMENT_AND_CIVIC_SERVICE_UI_ARCHITECTURE
- GOVERNMENT_AND_CIVIC_SERVICE_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Government UI must implement:

- government_overview_screen
- government_manage_screen
- government_issue_screen
- government_history_screen
- government_permission_screen

Optional where supported:

- government_linked_screen
- government_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Government overview must prioritize
service continuity and backlog visibility.

Initial priority:

1. institution identity
2. authority context
3. service state
4. process state
5. queue warning summary
6. process warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Government manage must default to:

- summary_tab

Fallback order:

- service_scope_tab
- case_and_process_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. service_scope_tab
3. case_and_process_tab
4. issue_tab
5. counter_and_queue_tab
6. document_and_notice_tab
7. public_information_tab
8. staffing_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Service and process visibility
must appear early.


# ============================================================
# 6. SERVICE SCOPE TAB IMPLEMENTATION
# ============================================================

Service scope tab must expose
active civic service families.

It should load:

- service grouping
- active service counts
- service priority posture
- unsupported area indicators
- overload indicators
- reconfiguration pressure

Service reprioritization must be explicit.


# ============================================================
# 7. COUNTER AND QUEUE TAB IMPLEMENTATION
# ============================================================

Counter and queue tab must expose
frontline service burden.

It should load:

- counter grouping
- queue posture
- waiting load
- throughput posture
- bottleneck visibility
- support need visibility

Queue corrections should refresh:

- queue section
- overview queue warnings
- issue indicators when relevant


# ============================================================
# 8. CASE AND PROCESS TAB IMPLEMENTATION
# ============================================================

Case and process tab is a high-priority surface.

It must expose:

- process grouping
- backlog posture
- blocked cases
- delayed cases
- escalation need
- completion posture

Process escalation must be explicit.

Process handling actions should refresh:

- process tab
- overview process summary
- issue indicators


# ============================================================
# 9. DOCUMENT AND NOTICE TAB IMPLEMENTATION
# ============================================================

Document and notice tab must expose
publication and notice quality.

It should load:

- document or notice grouping
- publication state
- freshness posture
- outdated indicators
- correction need
- visibility scope

Notice updates must be explicit
and should result in history visibility.


# ============================================================
# 10. PUBLIC INFORMATION TAB IMPLEMENTATION
# ============================================================

Public information tab must expose
public-facing information readiness.

It should load:

- public information posture
- exposed notice count
- outdated public info flags
- access channel posture
- clarification need
- communication burden

Public information corrections should refresh:

- public info tab
- document and notice posture when relevant
- issue indicators


# ============================================================
# 11. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
civic-service staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- queue burden
- process burden
- reassignment need

Staffing changes should refresh:

- staffing section
- overview warnings
- issue indicators


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Government automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- visibility posture
- threshold summary
- recent automated changes

Automation must not silently replace
human-readable service state visibility.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Government issue tab must centralize
service-blocking and process-blocking problems.

Typical issue groups include:

- service backlog
- queue overload
- staffing shortage
- blocked process
- outdated or missing notice
- authority-handling inconsistency visibility
- service coverage concern

Critical issue visibility must appear
on overview as well.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

counter_operator:
- counter and queue visibility
- limited case visibility
- issue visibility

document_operator:
- document and notice visibility
- public information visibility
- issue visibility

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- limited public information visibility only
- no operational mutation visibility

Operational restrictions should remain understandable.


# ============================================================
# 15. SEARCH ENTRY RULE
# ============================================================

Search entry should land on:

- government_overview_screen

Matched context may highlight:

- service group
- process group
- notice group
- issue group

Search must not deep-link by default
into mutation routes.


# ============================================================
# 16. NOTIFICATION ENTRY RULE
# ============================================================

Notification entry may route to:

- overview by default
- issue screen when issue-rooted
- process tab when explicitly process-rooted and safe
- public information tab when explicitly notice-rooted and safe

Relevant sections should be highlighted when possible.


# ============================================================
# 17. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- linked support facility
- linked residence / school / hospital context
- linked authority-related facility
- linked district or city context where supported

Linked navigation must preserve
source government orientation.


# ============================================================
# 18. FINAL RULE
# ============================================================

Government implementation must remain:

- service-visible
- process-visible
- queue-visible
- notice-visible
- issue-visible
- summary-first
- explicitly readable in permission and restriction behavior
