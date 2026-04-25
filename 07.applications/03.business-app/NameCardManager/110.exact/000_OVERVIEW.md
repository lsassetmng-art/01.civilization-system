# ============================================================
# NAMECARDMANAGER EXACT DESIGN OVERVIEW
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app
phase: exact design before implementation

purpose:
- Fix implementation-ready exact design for NameCardManager.
- Keep business canon inside NameCardManager / BusinessOS.
- Use CommonOS as shared provider through BusinessOS _commonos consumer.
- Do not put API payload canon, DB canon, business rules, pricing, entitlement, or secrets in CommonOS.

implementation_policy:
- design files stay under ~/01.civilization-system/07.applications/03.business-app/NameCardManager
- build / runtime files stay under ~/03.civilization-development/03.business-os/NameCardManager
- BusinessOS consumer layer stays under ~/03.civilization-development/03.business-os/_commonos
- CommonOS provider stays under ~/03.civilization-development/12.common-os

db_environment_note:
- This chat uses PERSONA_DATABASE_URL when DB execution is explicitly approved.
- This phase does not execute DB changes.

review:
- 佐藤(DB担当): review required before any DDL apply.
- Boss: final GO required before any DDL apply.
