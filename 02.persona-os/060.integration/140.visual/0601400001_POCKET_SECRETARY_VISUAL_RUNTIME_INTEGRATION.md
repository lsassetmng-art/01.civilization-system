# ============================================================
# POCKET SECRETARY VISUAL RUNTIME INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
must consume Persona Visual Runtime.


# ============================================================
# 2. INTEGRATION POSITION
# ============================================================

PocketSecretary is a host application.

PocketSecretary does not implement canonical
persona composition logic.

PocketSecretary must embed Visual Runtime
through the canonical public interface.


# ============================================================
# 3. EXPECTED SURFACES
# ============================================================

PocketSecretary should map screens
to canonical surface classes.

Recommended mapping:

main assistant view -> assistant_main
compact list / widget-like row -> assistant_compact
chat side display -> chat_side
persona detail card -> profile_card


# ============================================================
# 4. INPUT CONTRACT
# ============================================================

PocketSecretary must provide:

surface profile or surface code
manifest projection payload
platform container handle
host lifecycle callbacks

PocketSecretary may provide:

explicit background override
initial state hint
interaction callbacks


# ============================================================
# 5. OUTPUT CONTRACT
# ============================================================

PocketSecretary should expect:

render surface attachment
runtime lifecycle events
loading / ready transition
fallback events
recoverable error events
terminal error events


# ============================================================
# 6. UX RULES
# ============================================================

PocketSecretary should:

show host loading UI before ready
show persona-first fallback if background is delayed
avoid blank screen on optional background failure
dispose session on host view destruction


# ============================================================
# 7. PROHIBITIONS
# ============================================================

PocketSecretary must not:

directly mutate runtime internal graph
skip canonical surface contract
override canonical background priority
treat builder-only data as runtime truth
