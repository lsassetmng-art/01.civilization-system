# ============================================================
# LIFE PLANNER DOCUMENT COVERAGE LEDGER
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 090.close-package
owner: Boss
prepared_by: Zero
schema: life

coverage:
  root:
    status:
      - covered

  constitution:
    status:
      - covered

  architecture:
    status:
      - covered

  model:
    status:
      - covered
    details:
      - domain
      - logical schema
      - binding
      - masters
      - derived definition

  runtime:
    status:
      - covered
    details:
      - lifecycle
      - state machine
      - collaboration runtime

  flow:
    status:
      - covered

  integration:
    status:
      - covered
    details:
      - lifeos boundaries
      - payload exact
      - contract binding
      - connected app assumptions

  operations:
    status:
      - covered
    details:
      - plan ops
      - notification/review
      - data lifecycle
      - checklist/risk/value
      - recommendation rules

  policy:
    status:
      - covered
    details:
      - privacy/pricing
      - validation
      - ai assist
      - copy policy
      - retention/deletion
      - conflict/change control
      - settings defaults

  interface:
    status:
      - covered
    details:
      - screens
      - screen items
      - access control
      - dashboards
      - onboarding/template
      - search/filter
      - export/summary
      - copy/state
      - archive/delete
      - change review
      - settings/workbook
      - indicator/score

  implementation_readiness:
    status:
      - covered
    details:
      - phased scope
      - readiness gate
      - acceptance criteria
      - pre implementation package

  development_meta:
    status:
      - covered
    details:
      - backlog
      - decision log
      - open issues
      - audit
      - traceability
      - edge cases
      - final handoff
      - glossary
      - navigation

not_covered_by_design_on_purpose:
  - code
  - ddl
  - migrations
  - runtime implementation mechanics
