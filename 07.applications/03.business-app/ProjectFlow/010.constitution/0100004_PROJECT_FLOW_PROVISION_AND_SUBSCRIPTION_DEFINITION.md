# ============================================================
# PROJECT FLOW PROVISION AND SUBSCRIPTION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines provision style, subscription style, trial, and unpaid behavior.

provision_style:
- pre-installed application

device_support:
- smartphone
- pc

device_capability_rule:
ProjectFlow must provide the same functional capability
on smartphone and PC.

Differences between smartphone and PC are limited to
layout,
interaction density,
and presentation optimization.

Functional gaps by device are not allowed.

subscription_style:
- monthly-use application

pricing_policy:
- monthly_price_jpy: 900

trial_policy:
- initial_trial_period_days: 7

unpaid_policy_summary:
When subscription is inactive,
ProjectFlow enters read-only mode.

read_only_mode_allows:
- dashboard view
- project view
- task view
- issue and risk view
- report history view
- sync history view

read_only_mode_blocks:
- create
- edit
- archive
- import request
- export request
- spreadsheet generation
- report draft generation
- report draft update
