# ============================================================
# ANDROID PHASE 1 GENERATION BOUNDARY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines generation boundary for actual Phase 1 Android file creation.

must_generate_now:
- local-first core chain files
- locale preference files
- currency preference files
- formatter files
- key-based text resolution files
- settings flow files

must_not_generate_now:
- governed operation files
- ERP handoff files
- advanced translation variant persistence
- advanced exchange-rate density
- dedicated comparison boards
- advanced recommendation modules

reason:
Phase 1 should establish a safe skeleton
without overloading implementation density.
