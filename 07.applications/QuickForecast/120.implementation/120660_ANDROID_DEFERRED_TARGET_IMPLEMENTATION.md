# ============================================================
# ANDROID DEFERRED TARGET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines valid deferred targets after phase 1.

deferred_targets:
- all Pro cache entities
- all Pro DAOs
- all Pro repositories
- all Pro ViewModels
- all Pro Activities
- all integration gateways
- advanced common UI components beyond first required ones

defer_rule:
Deferred targets are allowed only when they do not block
the core local-first chain from compiling and rendering.
