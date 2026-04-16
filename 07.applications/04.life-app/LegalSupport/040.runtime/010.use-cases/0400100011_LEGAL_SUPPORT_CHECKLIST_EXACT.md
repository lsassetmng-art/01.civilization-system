# ============================================================
# LEGAL SUPPORT CHECKLIST EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

get_category_checklist:
  request:
    action: get_category_checklist
    payload:
      category: enum[family, inheritance, divorce, neighborhood, contract, consumer, debt, labor, housing, accident, end_of_life, other]
      plan: enum[free, plus_family]
  response:
    category: string
    checklist_items:
      - item_id: string
        item_text: string
        detail_level: enum[simple, full]

checklist_rules:
  - Free returns simple set
  - plus_family returns full set
  - checklist completion state is UI/session managed in initial phase
  - future persistent completion tracking may be added later
