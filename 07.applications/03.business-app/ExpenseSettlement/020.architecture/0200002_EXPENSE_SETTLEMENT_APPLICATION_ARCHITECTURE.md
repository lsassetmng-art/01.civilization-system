# ============================================================
# EXPENSE SETTLEMENT APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

architecture:
- draft workspace
- receipt evidence manager
- approval state manager
- policy validator
- ERP publication gateway
- pending operation queue
- sync state tracker
- audit trail writer
- localization resource layer
- currency semantics layer
- responsive/adaptive presentation layer

core_boundary:
- app side handles interaction and staging
- ERP side handles accounting truth
- PocketSecretary side handles reminder and candidate support

platform_architecture_principles:
- same core use cases across iphone, android, pc, and tablet
- UI composition may differ by form factor
- business rules must remain shared
- desktop and tablet may show split panes / wider review surfaces
- phone must optimize fast capture and submit

globalization_architecture_principles:
- localization resources must be externalized
- amount and currency code must be stored separately
- conversion-related fields must be explicit when cross-currency is involved
- locale formatting must not alter stored business values
