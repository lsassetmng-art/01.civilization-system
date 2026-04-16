# ============================================================
# MULTI DEVICE DEVELOPMENT PLAN
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development direction for multi-device support.

development_principles:
- build smartphone baseline first
- expand to tablet without forking business flow
- verify adaptive composition on key review-heavy screens first

priority_order:
1. smartphone-safe baseline layout
2. settings / dashboard adaptive checks
3. forecast list list-detail tablet support
4. proposal builder tablet-expanded layout
5. profit preview tablet-expanded layout
6. forecast detail tablet-expanded layout

non_goal_in_first_pass:
- device-specific workflow branching
- platform-specific business meaning divergence
- special foldable-only optimization
