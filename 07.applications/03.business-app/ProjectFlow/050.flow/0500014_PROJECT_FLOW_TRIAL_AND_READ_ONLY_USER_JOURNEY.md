# ============================================================
# PROJECT FLOW TRIAL AND READ ONLY USER JOURNEY
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines user-facing journey for trial and unpaid read-only states.

journey_trial_user:
1. install and open app
2. trial_active is resolved
3. full capability is available
4. user creates, edits, exports, and generates reports
5. user decides whether to subscribe before trial ends

journey_unpaid_read_only_user:
1. open app after trial expiry or inactive subscription
2. unpaid_read_only is resolved
3. user can view dashboard and details
4. blocked actions stay visible
5. user sees subscription explanation when attempting blocked action

journey_reactivated_user:
1. user completes payment
2. app refreshes entitlement
3. full capability becomes available again
4. previous data remains viewable and editable according to role
