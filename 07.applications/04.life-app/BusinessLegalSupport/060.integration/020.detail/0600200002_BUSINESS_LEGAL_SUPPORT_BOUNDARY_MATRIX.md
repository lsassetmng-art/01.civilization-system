# ============================================================
# BUSINESS LEGAL SUPPORT BOUNDARY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

boundary_matrix:

  BusinessLegalSupport:
    owns:
      - owner-driven issue intake
      - lightweight contract ledger
      - consultation prep
      - deadline tracking
      - risk memo
    does_not_own:
      - enterprise approval
      - official corporate legal repository
      - ERP official processing

  LifePlanner:
    relation:
      - long-term life/business planning reference only
    transfer_mode:
      - summary link

  MoneyPlanner:
    relation:
      - contract amount and legal cost awareness
    transfer_mode:
      - note-level linkage only

  BusinessOS:
    relation:
      - formal company-side legal operation when needed
    transfer_mode:
      - explicit handoff only

  ERP:
    relation:
      - outside the scope of this app
    transfer_mode:
      - none from this app directly
