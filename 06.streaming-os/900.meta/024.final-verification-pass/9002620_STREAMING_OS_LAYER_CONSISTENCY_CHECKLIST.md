# ============================================================
# STREAMING OS LAYER CONSISTENCY CHECKLIST
# ============================================================

status: canonical-meta
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. TARGET LAYERS
# ============================================================

target_layers:
- 019.interface
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.security
- 100.infrastructure
- 120.implementation

# ============================================================
# 2. CHECK ITEMS
# ============================================================

check_items:
- each layer overview reflects newly separated domains
- each layer index reflects newly added folders/files
- each layer integrated reflects creator/viewer/moderation/notification/corporate separation
- numbering remains monotonically understandable
- domain names remain semantically aligned across layers
- major layers reflect:
  - multilingual interpretation
  - multi-currency interpretation
  - nation-aware currency display interpretation
  - iPhone support
  - Android support
  - PC support
  - tablet support

# ============================================================
# 3. CROSS-LAYER ALIGNMENT CHECKS
# ============================================================

cross_layer_alignment_checks:
- creator domains exist across interface / architecture / model / flow / implementation
- viewer domains exist across interface / architecture / model / flow / implementation
- moderation domains exist across interface / architecture / model / flow / operations / policy / security
- notification domains exist across interface / model / flow / integration / operations / security / implementation
- corporate domains exist across interface / architecture / model / integration / operations / security / implementation
- multilingual wording remains aligned across constitution / root / major layers
- multi-currency wording remains aligned across constitution / root / major layers
- cross-device wording remains aligned across constitution / root / major layers

# ============================================================
# 4. FAILURE SIGNS
# ============================================================

failure_signs:
- one layer still treats a major domain as implicit only
- numbering collisions or confusing skips exist
- domain meaning differs across layers
- integrated docs lag behind layer-local additions
- one or more major layers omit platform / international support wording
- device support wording differs materially across major layers

