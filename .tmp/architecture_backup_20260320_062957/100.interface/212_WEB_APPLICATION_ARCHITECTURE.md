# ============================================================
# WEB APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Web application is the primary delivery surface for Civilization.

properties:
- browser accessible
- persistent online world access
- server-authoritative state
- multi-domain integrated presentation

responsibilities:
- render authorized state views
- submit explicit user intent
- display notifications, history, and warnings
- handle session continuity

non_responsibilities:
- no authoritative state ownership
- no direct law bypass
- no direct event bypass
- no hidden execution path

rules:
- all writes must be intent submissions
- all state shown to users must derive from backend-authoritative views
- offline assumptions must not silently overwrite server truth

final_rule:
Web application is a delivery surface only;
authoritative logic lives outside it.
