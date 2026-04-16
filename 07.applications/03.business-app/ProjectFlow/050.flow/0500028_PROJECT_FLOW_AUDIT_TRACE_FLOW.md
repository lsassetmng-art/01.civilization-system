# ============================================================
# PROJECT FLOW AUDIT TRACE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines high-level audit trace flow.

flow:
1. user or system-triggered action occurs
2. action authority and state transition are evaluated
3. target change or boundary request is executed
4. audit-relevant before/after context is captured where applicable
5. resulting state and review context remain inspectable later

important_rules:
- export action should not erase prior review context
- schedule proposal adjustment should remain traceable before confirmation
- sync retry should remain traceable as a new retry action,
  not hidden overwrite
