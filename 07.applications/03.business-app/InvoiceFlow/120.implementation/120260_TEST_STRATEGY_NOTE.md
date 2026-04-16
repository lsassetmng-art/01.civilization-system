# ============================================================
# TEST STRATEGY NOTE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines test strategy themes across implementation phases.

test_layers:
- api contract tests
- status transition tests
- permission boundary tests
- UI behavior tests
- operational workflow tests
- regression tests for authority boundary

must_not_break:
- FRONT_LOCAL vs ERP_MASTER distinction
- receipt without confirmed payment denial
- ERP reflection denial for non-eligible path
- ambiguous bank match blocking
- collection action traceability

recommended_order:
1. api and status transition tests
2. permission tests
3. workflow tests
4. multi-device UI tests
