# ============================================================
# AI WORKER SHARED CONVERSATION COMPONENT INTERFACE
# ============================================================

status: canonical
layer: interface
domain: ai-worker-consumer-apps
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines how consumer apps reuse shared conversation components.

rule:
Shared conversation components may be reused,
but worker identity, activity mode, disclaimer state,
job linkage, and output handoff must remain explicit.
