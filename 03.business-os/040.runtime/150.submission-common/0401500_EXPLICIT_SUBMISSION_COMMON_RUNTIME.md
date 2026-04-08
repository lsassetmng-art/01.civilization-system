# ============================================================
# EXPLICIT SUBMISSION COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

definition:
Defines common runtime behavior for explicit submission.

runtime sequence:
1. draft exists
2. review surface is reached
3. explicit user submit action occurs
4. auth context is verified
5. external API submission is attempted
6. pending response state is recorded
7. accepted / failed / conflicted result is reflected

rules:
- explicit user action is required
- transport send and business acceptance remain distinct
