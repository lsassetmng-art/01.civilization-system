# PERSONA KEYS HISTORICAL VERIFICATION CONTINUITY REVIEW MEMO

status: residual-queue-closed-candidate
system: PersonaOS
layer: meta
confirmed_at: 20260418_191037

purpose:
Provides the review memo for closing residual queue item 3.

review_summary:
- keys-current now has a stable active-set role
- keys-by-id now has a stable historical continuity role
- rotated, revoked, and retired states are now tied to explicit verification availability semantics

what_is_closed:
- role split between current-set publication and historical-by-id lookup
- lifecycle-to-availability table
- public-safe disclosure rule for continuity

what_remains_refinement_only:
- exact retention window values
- exact public-safe status wording if later needed
- exact policy limits for revoked and retired historical disclosure

must_remain_true:
- private key material never leaves internal boundary
- active-set publication is not historical continuity
- implementation_started remains no
- this closes one residual queue item without reopening family-wide design

