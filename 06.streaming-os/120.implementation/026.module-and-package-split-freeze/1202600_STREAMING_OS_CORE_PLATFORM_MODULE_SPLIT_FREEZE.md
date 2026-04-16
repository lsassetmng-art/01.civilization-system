# ============================================================
# STREAMING OS CORE PLATFORM MODULE SPLIT FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: module-and-package-split-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RECOMMENDED CORE MODULES
# ============================================================

recommended_modules:
- streaming-core-principal
- streaming-core-session
- streaming-core-asset
- streaming-core-publish
- streaming-core-monetization
- streaming-core-reaction-ranking-ad

# ============================================================
# 2. RESPONSIBILITY FREEZE
# ============================================================

streaming-core-principal:
- principal resolution
- ownership interpretation
- performer distinction
- rights/beneficiary linkage roots

streaming-core-session:
- session commands
- lifecycle transitions
- session-state reads
- governance-aware session checks

streaming-core-asset:
- archive asset handling
- clip derivation handling
- asset review/governance state linkage

streaming-core-publish:
- publish eligibility
- publish orchestration
- external target adapter dispatch
- publish result recording

streaming-core-monetization:
- tip command handling
- beneficiary resolution
- currency conversion
- auto tipping state linkage

streaming-core-reaction-ranking-ad:
- reaction recording
- favorite state handling
- summary projection updates
- ranking generation
- ad candidate/insertion/display handling

# ============================================================
# 3. PACKAGE PRINCIPLE
# ============================================================

recommended_package_style:
- feature-first
- package names aligned to canonical domain meaning
- avoid mixed "misc" or "util" domain packages for core logic

