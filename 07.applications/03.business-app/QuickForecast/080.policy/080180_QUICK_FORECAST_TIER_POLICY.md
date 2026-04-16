# ============================================================
# QUICK FORECAST TIER POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines tier structure for QuickForecast.

tier_structure:
- QuickForecast Basic
- QuickForecast Pro Personal
- QuickForecast Pro Team

tier_meaning:

QuickForecast Basic:
- free tier
- local-first usage
- single-user centered
- forecast to proposal to profit experience available
- no governed team operation

QuickForecast Pro Personal:
- monthly subscription app tier
- personal productivity expansion
- sync and storage expansion
- advanced output support
- stronger personal continuity

QuickForecast Pro Team:
- monthly subscription app tier
- team operation expansion
- sharing, approval, notification, and ERP-connected handoff
- governed business usage

tier_boundary_rule:
The tier boundary must separate
draft experience
from
governed operational experience.
