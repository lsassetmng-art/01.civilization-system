# ============================================================
# APP DEVELOPMENT STUDIO APPROVAL CONSTITUTION
# ============================================================

status: canonical-draft
layer: constitution
system: applications
application: App Development Studio

purpose:
Defines the constitutional position of review and approval.

core_principle:
Review and approval are separate concepts.

review_meaning:
Review means content inspection before or around execution.

approval_meaning:
Approval means execution permission or acceptance permission.

allowed_modes:
review:
- mandatory
- recommended
- optional
- skipped

approval:
- mandatory
- optional
- auto-approved

constitutional_position:
The application may allow review skipping,
approval skipping,
or both,
but only under configured policy.

safety_override:
Dangerous actions may automatically escalate to stronger review or approval.

examples:
- destructive SQL may force mandatory approval
- protected branch push may force stronger review
- production DB execution may force approval
- shared artifact overwrite may force approval

separation_value:
By separating review and approval,
the application can support:
- speed-first generation
- guarded execution
- manual-heavy operation
- mixed control by artifact type

summary:
App Development Studio supports configurable control,
not one fixed review doctrine.
