# ============================================================
# PERSONA VISUAL RUNTIME HOSTING OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document explains Visual Runtime
from the host application perspective.

It is intended for applications such as:

PocketSecretary
Streaming applications
Creator applications
Game applications


# ============================================================
# 2. WHAT THE HOST NEEDS TO KNOW
# ============================================================

A compliant host must understand:

what Visual Runtime is
what Visual Runtime is not
what the host must provide
what the runtime returns
what fallback behavior exists
what lifecycle must be managed


# ============================================================
# 3. WHAT VISUAL RUNTIME IS
# ============================================================

Visual Runtime is the canonical shared component
for persona rendering and background rendering.

It performs:

manifest-based rendering
surface-based composition
background resolution
runtime state handling
fallback-safe visual execution

It is embedded by host applications.


# ============================================================
# 4. WHAT VISUAL RUNTIME IS NOT
# ============================================================

Visual Runtime is not:

a builder
a truth storage layer
a host-specific renderer definition
an authoring tool
a hidden persona mutation system


# ============================================================
# 5. WHAT THE HOST PROVIDES
# ============================================================

The host provides:

surface selection
surface profile or surface code
manifest projection payload
container binding target
lifecycle events
optional background override
optional initial state hints


# ============================================================
# 6. WHAT THE RUNTIME RETURNS
# ============================================================

The runtime returns or emits:

render surface binding
runtime session lifecycle
render completion
fallback notifications
recoverable errors
terminal errors


# ============================================================
# 7. HOST LIFECYCLE
# ============================================================

Canonical host lifecycle is:

select surface
obtain manifest projection
initialize runtime
create session
attach container
observe runtime events
dispose session when host surface ends

The host must explicitly dispose the session.


# ============================================================
# 8. FALLBACK PRINCIPLE
# ============================================================

Visual Runtime must prefer persona-first visibility.

Therefore:

optional background failure
must not cause blank persona output
unless the surface contract explicitly requires otherwise


# ============================================================
# 9. POCKETSECRETARY INTERPRETATION
# ============================================================

PocketSecretary is a host.

PocketSecretary should not reimplement
persona composition logic.

PocketSecretary should embed Visual Runtime
through the canonical public interface
and react to runtime output and events.


# ============================================================
# 10. RECOMMENDED NEXT DOCUMENTS
# ============================================================

After this document, host implementers should read:

0201400006_PERSONA_VISUAL_RUNTIME_PUBLIC_API_ARCHITECTURE.md
0201400007_PERSONA_VISUAL_SURFACE_CONTRACT_ARCHITECTURE.md
0201400008_PERSONA_VISUAL_BACKGROUND_RESOLUTION_ARCHITECTURE.md
0401400004_PERSONA_VISUAL_RUNTIME_PUBLIC_API_RUNTIME.md
0601400001_POCKET_SECRETARY_VISUAL_RUNTIME_INTEGRATION.md
0901400001_PERSONA_VISUAL_RUNTIME_PUBLIC_INTERFACE.md
