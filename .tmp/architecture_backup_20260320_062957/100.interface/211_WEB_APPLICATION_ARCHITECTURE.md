# ============================================================
# WEB APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Civilization is delivered primarily as a web application.

properties:
- persistent online world
- browser-accessible
- backend-driven simulation
- multi-domain integrated UI

responsibilities:
- render player-facing state
- collect player decisions
- display events, logs, notices, and history

non_responsibilities:
- authoritative state ownership
- war outcome calculation
- core economy calculation
- legal enforcement logic

principle:
- web client is interface
- backend is source of truth
