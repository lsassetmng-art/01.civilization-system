# ============================================================
# STREAMING OS TIPPING AND CURRENCY RUNTIME
# ============================================================

status: canonical-draft
system: streaming-os
domain: tipping-and-currency-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RUNTIME PURPOSE
# ============================================================

This runtime governs execution-time handling
of tip events and currency interpretation.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The tipping runtime is responsible for:
- validating tip eligibility
- resolving primary beneficiary
- applying source currency meaning
- converting to beneficiary-side currency
- preserving display currency interpretation
- applying hold / block / refund behavior
- exposing optional BusinessOS linkage handoff

# ============================================================
# 3. TIP VALIDATION
# ============================================================

Before tip capture or release,
runtime should validate:
- session monetization openness
- beneficiary validity
- balance or payment readiness
- restriction absence or applicable hold path
- tip origin type validity
- minor-equivalent restriction when relevant

# ============================================================
# 4. BENEFICIARY RESOLUTION
# ============================================================

Runtime should explicitly resolve:
- primary revenue beneficiary
- beneficiary nation context
- beneficiary currency
- display currency meaning

# ============================================================
# 5. CURRENCY CONVERSION
# ============================================================

Runtime should preserve:
- source nation currency
- source amount
- beneficiary nation currency
- converted beneficiary amount
- display currency and amount
- conversion timestamp

# ============================================================
# 6. HOLD / REFUND / REVERSAL
# ============================================================

Runtime should preserve distinct execution paths for:
- held
- released
- refunded
- partially_refunded
- reversed
- blocked

# ============================================================
# 7. AUTO TIPPING HANDOFF
# ============================================================

When tip origin is ai_emotional_auto,
runtime should accept emotional auto tipping
as a generation path,
while still treating the resulting tip
as a formal tip event.

# ============================================================
# 8. BUSINESSOS HANDOFF
# ============================================================

When operationally required,
runtime may expose linkage-ready state
for BusinessOS downstream handling.

ERP is not the current downstream target.

# ============================================================
# 9. CANONICAL FIXED STATEMENT
# ============================================================

The tipping and currency runtime
shall execute and preserve formal tip meaning,
beneficiary resolution,
source-to-beneficiary currency conversion,
and restriction-aware execution
without collapsing them into a single opaque payment action.

