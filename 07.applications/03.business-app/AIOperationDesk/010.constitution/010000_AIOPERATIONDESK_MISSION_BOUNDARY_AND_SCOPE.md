# ============================================================
# AI OPERATION DESK MISSION BOUNDARY AND SCOPE
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: constitution
owner: Boss
prepared_by: Zero

mission:
Provide governed AI-worker operational control across supported apps,
starting from the operations domain, with strong support for ERP and
Builder surfaces.

in_scope_v1:
- natural language request intake
- voice intake
- work order compilation
- supported app explanation
- supported app operation QA
- review / approval / audit
- retry / failure / queue
- resident ERP support
- resident Builder support
- consult lane / draft lane / execution bridge
- notification
- batch summary

out_of_scope_v1:
- free chat
- secretary-first UI
- unsupported app execution
- unsupported app operation QA
- ungated high-risk execution
- external DB direct write
- first outbound auto-send

boundary_with_pocketsecretary:
- PocketSecretary:
  - realtime summary
  - realtime response
  - secretary / consult experience
  - exceptional app-side AI worker invocation
- AI Operation Desk:
  - operation-specialized
  - batch summary
  - governed execution and control
