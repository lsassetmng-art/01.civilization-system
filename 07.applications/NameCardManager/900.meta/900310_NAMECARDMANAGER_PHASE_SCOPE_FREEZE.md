# ============================================================
# NAMECARDMANAGER PHASE SCOPE FREEZE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes delivery phases to reduce implementation scope drift.

phase_a:
- auth entry
- local CRUD
- sync core
- share core
- publication preflight/request
- front/back image basic handling
- CSV import minimum entry
- import preview minimum

phase_b:
- duplicate review
- company grouping
- recent activity
- meeting prep
- import diagnostics
- migration review
- migration summary basic

phase_c:
- rule-based enrichment advanced
- localization expansion
- import image support advanced
- advanced migration support
- advanced public company enrichment
