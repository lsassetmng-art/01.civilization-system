# ============================================================
# GAME OS GAMBLING RUNTIME ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: gambling-runtime
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines national-currency gambling as a high-control runtime family.

# ============================================================
# 2. CORE BOUNDARIES
# ============================================================

GameOS gambling runtime separates:
- eligibility truth
- wager truth
- outcome truth
- settlement instruction
- settlement result
- refund and reversal
- wallet canonical truth
- safety and dispute control

# ============================================================
# 3. GENRE POSITION
# ============================================================

Gambling runtime is a special high-control runtime family and is not the same as
ordinary Action Game, Adventure Game, 2D Fighting Game, RPG, Puzzle, Strategy,
Visual Novel, or Dating Simulation runtime.

It may coexist with those genre families as a separate controlled runtime path,
but it is governed by stronger safety, audit, settlement, and dispute rules.

# ============================================================
# 4. GAMBLING LIFECYCLE
# ============================================================

- wager intent
- eligibility evaluation
- wallet lock request
- active wager
- gameplay
- provisional outcome
- finalized outcome
- settlement instruction
- settlement result
- refund / reversal / dispute path if needed

# ============================================================
# 5. MANDATORY CONTROLS
# ============================================================

- eligibility gate
- lock confirmation before active wager
- anomaly hold support
- dispute path
- strong auditability
- self-exclusion and cooldown handling
- player protection controls
- idempotent settlement instruction

# ============================================================
# 6. PERSONA LIMITS
# ============================================================

Persona may be used for presentation, dealer roles, host roles, and guidance,
but must not replace gambling eligibility, wallet truth, or safety truth.

# ============================================================
# 7. CONCLUSION
# ============================================================

Gambling runtime is not ordinary gameplay runtime with money attached.
It is a separate high-control runtime that integrates with finance, safety,
audit, and dispute handling.
