# ============================================================
# REQUEST RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how a development request is normalized at runtime.

runtime_steps:
1. receive raw request
2. assign request_id
3. resolve target project
4. resolve input mode
5. resolve desired generation mode
6. resolve target environment
7. resolve target languages
8. attach selected rule profile
9. attach review / approval / build / Git modes
10. persist normalized request state

runtime_outputs:
- normalized development_request
- initial audit entry
- initial progress record candidate

blocking_conditions:
- no target project
- no input mode
- no output target
- invalid environment selection

notes:
Request resolution is the first formal control gate.
