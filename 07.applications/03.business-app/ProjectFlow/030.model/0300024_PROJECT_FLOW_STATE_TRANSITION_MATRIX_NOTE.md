# ============================================================
# PROJECT FLOW STATE TRANSITION MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major states and allowed transitions.

state_transition_matrix:

project_status:
allowed_values:
- draft
- imported
- active
- on_hold
- completed
- archived

typical_transitions:
- draft -> active
- imported -> active
- active -> on_hold
- on_hold -> active
- active -> completed
- completed -> archived

task_status:
allowed_values:
- not_started
- in_progress
- blocked
- done
- cancelled

typical_transitions:
- not_started -> in_progress
- in_progress -> blocked
- blocked -> in_progress
- in_progress -> done
- not_started -> cancelled

milestone_status:
allowed_values:
- not_started
- in_progress
- completed
- delayed
- cancelled

typical_transitions:
- not_started -> in_progress
- in_progress -> completed
- in_progress -> delayed
- delayed -> in_progress
- delayed -> completed

schedule_proposal_status:
allowed_values:
- proposed
- adjusted
- confirmed
- discarded

typical_transitions:
- proposed -> adjusted
- proposed -> confirmed
- adjusted -> confirmed
- proposed -> discarded
- adjusted -> discarded

report_approval_status:
allowed_values:
- draft
- reviewed
- approved

typical_transitions:
- draft -> reviewed
- reviewed -> approved
- reviewed -> draft

export_job_status:
allowed_values:
- queued
- generating
- completed
- failed

typical_transitions:
- queued -> generating
- generating -> completed
- generating -> failed

sync_status:
allowed_values:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

typical_transitions:
- queued -> running
- running -> completed
- running -> partially_failed
- running -> failed
- queued -> cancelled

entitlement_state:
allowed_values:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

typical_transitions:
- trial_active -> subscribed_active
- trial_active -> unpaid_read_only
- subscribed_active -> unpaid_read_only
- unpaid_read_only -> subscribed_active
