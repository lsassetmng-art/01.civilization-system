# ============================================================
# PROJECT FLOW FORM MEMO COMMENT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- dynamic form renderer for limited form types
- memo persistence and search
- lightweight threaded comment persistence
- project detail linkage to memo and comment screens

implementation_rules:
- keep form types limited and explicit
- keep memo simple and searchable
- keep comments lightweight and entity-scoped
- avoid turning comments into full realtime chat requirements
