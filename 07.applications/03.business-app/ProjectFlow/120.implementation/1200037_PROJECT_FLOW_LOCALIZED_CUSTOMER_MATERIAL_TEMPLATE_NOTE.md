# ============================================================
# PROJECT FLOW LOCALIZED CUSTOMER MATERIAL TEMPLATE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for localized customer material templates.

template_targets:
- localized material title
- localized section heading set
- localized review-state label
- localized standard phrase set
- localized export section label set

implementation_rules:
- keep template keys stable across languages
- keep business content separate from localized headings
- allow post-generation wording override
- avoid mixing multiple locales in one generated material
