# ============================================================
# AIWORKER IMPLEMENTATION HANDOFF ONEBLOCK POLICY EXACT
# ============================================================

status: implementation-handoff-policy
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Freeze the implementation handoff style and execution policy.

handoff_policy:
- implementation outputs should be grouped into executable bundles
- Termux-ready one-block output is preferred
- absolute paths are required
- additive-only execution style is required
- no hidden prerequisites
- phase declaration is required before executable output
- SQL execution material must be separated by package responsibility

preferred_output_units:
- migration block
- function block
- security/grant block
- validation/test block

hard_rules:
- no phase-less patching
- no destructive shortcut for convenience
- no mixing unrelated packages into one opaque execution block
