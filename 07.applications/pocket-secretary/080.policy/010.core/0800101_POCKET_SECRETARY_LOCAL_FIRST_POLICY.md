# ============================================================
# POCKET SECRETARY LOCAL FIRST POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Core secretary functions should prefer local execution
and local persistence whenever possible.

applies to:
- schedule handling
- todo handling
- note handling
- dashboard usability
- local draft preservation

rules:
- local continuity takes precedence over optional external freshness
- external failure should degrade features, not collapse base use
- local work should be preservable before any optional sync
