# ============================================================
# ARCHITECTURE LAYER FILE STRUCTURE RULE
# targets: 004.mode / 005.story / 006.player / 012.integration
# ============================================================

status: canonical
layer: meta
type: structure-rule
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical file-structure rule for the 020.architecture layer
for the following domains:
- 004.mode
- 005.story
- 006.player
- 012.integration

rule_intent:
The architecture layer is allowed to be denser than later layers,
because it defines canonical meaning, decomposition,
and reading structure for all downstream layers.

canonical_decision:
For the target domains,
020.architecture uses a 9-file pattern as the canonical structure.

This is not temporary.
This is the intended structure.

# ============================================================
# 1. CANONICAL 020 FILE SET
# ============================================================

canonical_020_file_set:
1. DOMAIN_INDEX.md
2. DOMAIN_OVERVIEW.md
3. 020xxxx0000_*_ARCHITECTURE_INDEX.md
4. 020xxxx0001_*_CORE_ARCHITECTURE.md
5. 020xxxx0001_*_OVERVIEW_ARCHITECTURE.md
6. 020xxxx0002_*.md
7. 020xxxx0003_*.md
8. 020xxxx0004_*.md
9. 020xxxx0005_*.md

meaning_of_extra_files:
- the 0000 architecture index file exists to define
  architecture-internal reading order and conceptual decomposition
- the 0001 overview architecture file exists to define
  architecture-level interpretation framing before subdomain split

# ============================================================
# 2. WHY 020 IS ALLOWED TO DIFFER
# ============================================================

reasoning:
020.architecture is the layer that establishes:
- the canonical conceptual split
- the domain framing
- the meaning of each subdomain
- the interpretation order for downstream implementation

Therefore, it may legitimately contain:
- a domain-level index
- a domain-level overview
- an architecture-internal index
- an architecture-internal overview
- core and subdomain files

This does not create inconsistency.
It creates explicit readability and decomposition.

# ============================================================
# 3. CANONICAL PATTERN FOR 040 TO 130
# ============================================================

canonical_040_to_130_pattern:
1. DOMAIN_INDEX.md
2. DOMAIN_OVERVIEW.md
3. xxxxxx0001_*_CORE_*.md
4. xxxxxx0002_*.md
5. xxxxxx0003_*.md
6. xxxxxx0004_*.md
7. xxxxxx0005_*.md
8. layer_summary_file

meaning:
All layers after architecture should remain structurally simpler
than architecture unless a future formal rule explicitly changes that.

# ============================================================
# 4. FORBIDDEN INTERPRETATIONS
# ============================================================

forbidden_interpretations:
- Do not treat the 020 extra files as accidental duplication.
- Do not delete the 020 architecture-internal index
  only to force raw file count symmetry.
- Do not add equivalent extra internal index/overview files
  to 040 through 130 without a new formal structure rule.
- Do not collapse 020 architecture overview meaning
  into later-layer summaries.

# ============================================================
# 5. REVIEW CONSEQUENCE
# ============================================================

review_consequence:
For 004.mode / 005.story / 006.player / 012.integration:

- 020.architecture count = 9 is correct
- 040 through 130 count = 8 is correct
- A file-count report showing that pattern
  should be read as PASS, not anomaly

# ============================================================
# 6. PRACTICAL CHECK
# ============================================================

expected_counts_for_target_domains:
- 020.architecture = 9
- 040.runtime = 8
- 050.flow = 8
- 060.integration = 8
- 070.operations = 8
- 080.policy = 8
- 100.security = 8
- 110.infrastructure = 8
- 120.implementation = 8
- 130.development = 8

