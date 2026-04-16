# ============================================================
# CROSS APPLICATION OVERLAP POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for preventing role overlap with nearby applications.

policy_principles:
- QuickForecast must remain forecast-centered
- overlap must be limited to supportive adjacency
- feature additions must not erase neighboring app identity
- when a nearby app already owns a canonical role, QuickForecast stays supportive

must_not_drift_into:
- enterprise-authoritative estimate ownership
- enterprise project-control ownership
- secretary-style personal assistance identity
- full enterprise governance identity

allowed_supportive_overlap:
- proposal-starting assistance
- lightweight financial visibility
- lightweight business explanation support
- cross-app handoff preparation
