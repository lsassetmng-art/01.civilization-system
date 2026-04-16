# ============================================================
# BILLING EVENT AUDIT MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the billing-event audit model for App Development Studio.

billing_event_types:
- trial_started
- trial_expired
- subscription_started
- renewal_succeeded
- renewal_failed
- grace_started
- grace_ended
- cancellation_requested
- cancellation_effective
- expired
- resumed
- refund_recorded
- billing_method_changed
- invoice_issued
- receipt_issued

audit_fields:
- billing_event_id
- account_id
- subscription_state_before
- subscription_state_after
- billing_plan_type
- billing_cycle_type
- billing_event_type
- billing_event_at
- effective_at
- billing_provider_reference
- internal_reference
- amount_jpy
- currency_code
- tax_included_flag
- result_status
- failure_reason_code
- failure_reason_message
- operator_type
- operator_id
- note

model_principles:
- every meaningful billing transition should be auditable
- before/after state should be capturable
- provider reference and internal reference should be separable
- audit record should not weaken or replace business meaning
- governance meaning remains independent from billing event history
