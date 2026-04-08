# ============================================================
# ANDROID FILE GENERATION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android file generation planning.

check_items:
- minimum runnable file set is clear
- file generation order follows dependency direction
- core local chain is prioritized over Pro
- templates remain thin and structurally correct
- screen/viewmodel/repository/entity responsibilities stay separated
- file batches remain buildable
