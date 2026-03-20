# ============================================================
# LAW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Law is the rule layer of a nation.

principles:
- actions are free unless prohibited by law
- state governs by law, not by direct arbitrary control
- legal violation triggers enforcement
- company actions are not pre-approved by state by default

law_domains:
- criminal_law
- economic_law
- administrative_law
- company_law
- securities_law
- antimonopoly_law
- market_law

law_structure:
- law_id
- nation_id
- law_domain
- law_code
- severity_level
- active_flag
- published_at

authoring_model:
- template_based
- structured editable fields
- no unrestricted freeform law logic in runtime-critical rules

effects:
- defines legality
- defines penalties
- constrains institutions
- shapes economy and society
