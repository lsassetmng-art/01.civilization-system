# ============================================================
# AI OPERATION DESK POLICY OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: policy
owner: Boss
prepared_by: Zero

policy_core:
- free only
- supported-app-only QA and execution
- resident only for ERP and Builder families
- batch summary only on AIOperationDesk side
- realtime summary / response on PocketSecretary side
- AI accessible data areas finalized by AI design
- AI workers read through cx22073jw view families only

core_restrictions:
- no unrestricted cross-app control
- no unsupported app execution
- no unsupported app operation QA
- no ungated high-risk execution
- no external DB direct write
