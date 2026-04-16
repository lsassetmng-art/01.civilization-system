# ============================================================
# TRIAL SUBSCRIPTION STATE MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the billing/trial state model for App Development Studio.

states:
- not_started
- trial_active
- trial_expired
- paid_monthly_active
- paid_yearly_active
- billing_paused
- billing_expired
- cancelled

state_meanings:

not_started:
The user has not started trial or paid subscription yet.

trial_active:
The user is inside the initial 10-day free trial period.

trial_expired:
The initial trial has ended and no paid plan is active.

paid_monthly_active:
The paid monthly subscription is active.

paid_yearly_active:
The paid yearly subscription is active.

billing_paused:
Billing is temporarily paused by payment or platform state handling.

billing_expired:
Paid access ended because renewal did not continue.

cancelled:
Subscription cancellation has been completed.

core_rules:
- only one initial trial is allowed per eligible user/account policy
- trial_active may transition to paid_monthly_active
- trial_active may transition to paid_yearly_active
- trial_active may transition to trial_expired
- monthly and yearly are same paid feature tier
- governance rules do not change by state
