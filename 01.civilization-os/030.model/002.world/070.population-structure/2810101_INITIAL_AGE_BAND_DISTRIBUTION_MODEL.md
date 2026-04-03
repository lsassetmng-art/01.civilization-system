# ============================================================
# INITIAL AGE BAND DISTRIBUTION MODEL
# ============================================================

status: canonical
layer: model
scope: population-structure-seed
component: initial-age-band-distribution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AGE BANDS
# ============================================================

Recommended age bands:
- infant_and_toddler
- child
- teenager
- young_adult
- adult
- senior


# ============================================================
# 2. NATIONAL POSTURE
# ============================================================

helios_democratic_kingdom:
- young_adult: high
- adult: very_high
- child: medium
- senior: medium

nova_commercial_federation:
- young_adult: very_high
- adult: very_high
- child: medium
- senior: medium_low

seiwa_state:
- child: high
- teenager: high
- young_adult: high
- adult: high
- senior: medium

gladia_military_alliance:
- young_adult: very_high
- adult: high
- child: medium_low
- senior: low

orpheus_oceanic_union:
- child: medium
- adult: high
- senior: medium_high

aurelia_federal_republic:
- child: low
- young_adult: low
- adult: medium
- senior: medium_high
- distorted by collapse and outflow

free_cities_union:
- young_adult: high
- adult: high
- child: medium_low
- senior: medium


# ============================================================
# 3. FINAL RULE
# ============================================================

Age band posture should reflect
economy, family structure, and migration history.
