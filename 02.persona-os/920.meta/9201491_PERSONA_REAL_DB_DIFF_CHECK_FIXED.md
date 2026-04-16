# ============================================================
# PERSONA REAL DB DIFF CHECK FIXED
# ============================================================

status: canonical
layer: meta
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed diff check
between the current PersonaOS design
and the uploaded real Persona-side database structure.

design_rule:
Implementation-preparation must prefer existing real DB structures first
before introducing new Persona-side tables.

# ============================================================
# 1. PRIMARY EXISTING TABLES USED
# ============================================================

existing_primary_tables:
- personaos.growth_events
- personaos.growth_core_state

reason:
These two existing tables already provide
a practical first landing zone for:
- business-origin effect intake
- trust/familiarity/relationship reflection

# ============================================================
# 2. EXISTING TABLE FIT
# ============================================================

existing_table_fit:

personaos.growth_events:
fit_level: high
usable_for:
- business-origin effect intake
- event processing queue
- payload context storage
- processed / unprocessed state management

personaos.growth_core_state:
fit_level: high
usable_for:
- trust
- familiarity
- relationship_score
- last_interaction_at
- canonical growth-side state reflection

# ============================================================
# 3. DESIGN TO REAL DB MAPPING
# ============================================================

design_to_real_db_mapping:

design_concept: business effect receipt
initial_real_db_mapping:
- personaos.growth_events

design_concept: trust state
initial_real_db_mapping:
- personaos.growth_core_state.trust

design_concept: familiarity state
initial_real_db_mapping:
- personaos.growth_core_state.familiarity

design_concept: relation state
initial_real_db_mapping:
- personaos.growth_core_state.relationship_score

design_concept: latest interaction tracking
initial_real_db_mapping:
- personaos.growth_core_state.last_interaction_at

# ============================================================
# 4. INITIAL NO-NEW-TABLE ITEMS
# ============================================================

initial_no_new_table_items:
- business-origin event intake
- trust reflection
- familiarity reflection
- relationship score reflection
- processed-state management

rule:
These must use existing real DB structures first.

# ============================================================
# 5. LATER ADDITION CANDIDATES
# ============================================================

later_addition_candidates:
- persona_company_relation_state
- persona_reliability_perception
- business_effect_receipt
- business_effect_apply_audit

rule:
These are not first-implementation blockers.
They are additive candidates only
if existing tables become insufficient.

# ============================================================
# 6. SUFFICIENCY JUDGMENT
# ============================================================

initial_sufficiency_judgment:
The uploaded Persona-side real DB is sufficient
for the first implementation-preparation path
of BusinessOS -> PersonaOS effect integration.

required_now:
- no large new Persona-side schema
- no immediate dedicated trust tables
- no mandatory dedicated company relation tables

# ============================================================
# 7. FIXED FIRST IMPLEMENTATION PATH
# ============================================================

fixed_first_implementation_path:
1. BusinessOS emits business-origin effect payload
2. PersonaOS stores it in personaos.growth_events
3. PersonaOS processing logic updates personaos.growth_core_state
4. PersonaOS marks growth_events record as processed

# ============================================================
# 8. FIXED GAP CLASSIFICATION
# ============================================================

gap_classification:

no_gap:
- trust storage
- familiarity storage
- relationship score storage
- event intake
- processing state

soft_gap:
- company-specific relation nuance
- reliability perception nuance
- dedicated audit-specific persona-side receipt table

hard_gap:
- none for first implementation-preparation

# ============================================================
# 9. OFFICIAL SUMMARY
# ============================================================

The Persona-side real DB is sufficient
for the first BusinessOS -> PersonaOS implementation-preparation path.

Use:
- personaos.growth_events
- personaos.growth_core_state

Do not add large new Persona-side tables first.
