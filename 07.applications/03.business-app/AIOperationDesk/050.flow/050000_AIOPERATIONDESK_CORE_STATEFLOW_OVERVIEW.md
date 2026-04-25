# ============================================================
# AI OPERATION DESK CORE STATEFLOW OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

main_flow:
1. receive request
2. parse request
3. resolve supported app and lane
4. compile work order
5. wait for trigger or immediate start
6. preflight check
7. classify risk
8. branch to review / approval if needed
9. route to controlled execution surface
10. collect result
11. record audit
12. notify if needed
13. schedule retry if needed
14. include in batch summary

resident_surface_flow:
1. user opens ERP or Builder
2. resident context is attached
3. operator asks explanation / QA / draft / execution bridge
4. request is compiled
5. governed route is applied
