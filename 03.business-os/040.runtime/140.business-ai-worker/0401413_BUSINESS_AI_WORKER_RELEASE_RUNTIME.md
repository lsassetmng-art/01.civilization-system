# ============================================================
# BUSINESS AI WORKER RELEASE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines release runtime.

release_triggers:
- normal completion
- timeout
- cancellation
- administrative release
- failure termination

rule:
Release must update slot usage, lending state, and usage log.
