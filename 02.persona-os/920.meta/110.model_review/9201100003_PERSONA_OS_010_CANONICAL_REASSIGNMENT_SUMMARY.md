# ============================================================
# PERSONA OS 010.CANONICAL REASSIGNMENT SUMMARY
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Summarizes first-pass reassignment results
for 030.model/010.canonical.

# ============================================================
# 1. CLASS COUNTS
# ============================================================

- keep_candidate: 0
0
- merge_to_new_domain_candidate: 139
- move_to_meta_or_legacy_candidate: 16

# ============================================================
# 2. TARGET FAMILY COUNTS
# ============================================================

- 030.model/020.identity or 030.model/010.core : 22
- 030.model/010.core or future cognition domain : 26
- 030.model/030.state or future emotion subdomain : 10
- 030.model/030.state or 030.model/010.core : 6
- 030.model/010.core or future communication subdomain : 6
- 030.model/020.identity or 030.model/030.state : 14
- 030.model/010.core : 5
- 030.model/040.memory : 18
- 030.model/030.state or future schedule domain : 6
- 999.archive/999.archive/930.legacy or separate business-aligned domain review : 5
- 030.model/100.security : 5
- 030.model/090.snapshot or 100.package or 110.distribution or 120.external_rights or 130.access_license_transfer : 8
- 030.model/170.operations-support or 999.archive/999.archive/930.legacy : 5
- 030.model/140.integration : 4
- 999.archive/999.archive/930.legacy or future simulation-specific domain : 6
- 030.model/070.visual : 5
- 030.model/070.visual or future voice subdomain : 4

# ============================================================
# 3. PRIORITY ABSORPTION ORDER
# ============================================================

Priority 1:
- 080.knowledge -> 030.model/040.memory
- 110.security -> 030.model/100.security
- 130.integration -> 030.model/140.integration
- 140.visual -> 030.model/070.visual

Priority 2:
- 010.identity -> 030.model/020.identity or 010.core
- 060.social -> 030.model/020.identity or 030.state
- 120.external_rights -> snapshot/package/distribution/external-rights/access-license-transfer split

Priority 3:
- 020.cognition
- 030.emotion
- 040.behavior
- 050.communication
- 070.capability
- 090.schedule
- 150.voice

Priority 4:
- 100.finance -> likely legacy or separate review
- 120.logs -> operations-support or legacy
- 130.simulation -> legacy or future dedicated domain

# ============================================================
# 4. SAFE STARTING POINT
# ============================================================

Start from families with the clearest destination:
- knowledge
- security
- integration
- visual

These have the lowest ambiguity.

# ============================================================
# 5. NEXT STEP
# ============================================================

Create a focused migration sheet for:
- 080.knowledge
- 110.security
- 130.integration
- 140.visual
