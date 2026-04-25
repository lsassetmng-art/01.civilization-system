# ============================================================
# AI OPERATION DESK OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
category: 03.business-app
owner: Boss
prepared_by: Zero

purpose:
AI Operation Desk is the governed execution and operational control hub
for AI workers. It is not a free-chat app, and not a secretary-first app.
Its main role is to receive requests, compile work orders, apply review /
approval / audit gates, route execution through controlled surfaces, and
support operators through help, QA, notification, retry, and batch summary.

fixed_position:
- operation-specialized
- free only
- text + voice intake
- LINE etc notifications for review / confirmation / error
- batch summary on AI Operation Desk side
- realtime summary / response on PocketSecretary side
- supported-app-only explanation and operation QA
- resident surface for ERP and Builder surfaces
- non-resident help mode for other supported apps

major_boundaries:
- canonical AI worker truth: AiworkerOS / aiworker
- business-side commercial / dispatch / ERP linkage truth: BusinessOS
- AI-worker read surface: cx22073jw view family
- raw table direct read by AI workers: disallowed
- execution / write surfaces: command row / draft row / staging row / official intake table / controlled function

core_responsibilities:
- governed execution routing
- work order compilation
- review / approval / audit
- retry / failure / queue
- supported app explanation
- supported app operation QA
- ERP consult / draft / execution bridge
- resident support surfaces for ERP and Builder families
