# ============================================================
# PERSONA VISUAL RUNTIME CONSTITUTION
# ============================================================

status: canonical
layer: constitution
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Persona Visual Runtime is the canonical execution component
for persona rendering and background rendering.

It is a shared runtime component.

It may be hosted by:

PocketSecretary
Streaming applications
Creator applications
Game applications
other approved hosts

Visual Runtime is not an authoring tool.
Visual Runtime is not a truth source.
Visual Runtime is not a persona mutation system.

Its purpose is strictly:

resolve render input
compose persona layers
compose background layers
produce render surface output
expose stable host-facing runtime behavior


# ============================================================
# 2. CONSTITUTIONAL POSITION
# ============================================================

Visual Runtime belongs to the execution side of PersonaOS.

Builder defines.
Model stores.
Runtime executes.
Host applications embed.

Therefore:

Builder must not be embedded into runtime contracts.
Runtime must not redefine authoring rules.
Host applications must not bypass runtime contracts.


# ============================================================
# 3. CORE PRINCIPLES
# ============================================================

1. Shared Component Principle
Visual Runtime must remain application-independent.

2. Truth Separation Principle
Visual Runtime must not become the source of truth
for persona profile, visual profile, or background profile.

3. Deterministic Rendering Principle
Given the same input contract and same assets,
runtime output behavior must be deterministic.

4. Host Isolation Principle
Host applications may provide container, lifecycle,
and event binding, but must not redefine canonical
runtime semantics.

5. Surface Contract Principle
All rendering must target a declared surface contract.

6. Fallback Safety Principle
When any visual element cannot be resolved,
runtime must fail closed at the element level
and fall back according to explicit rules.

7. Background Separation Principle
Background rendering is part of runtime execution,
but remains logically separate from persona layer composition.

8. Portable Contract Principle
A host that supports the canonical public interface
must be able to embed the runtime without app-specific rewrites.


# ============================================================
# 4. REQUIRED CONSTITUTIONAL BOUNDARIES
# ============================================================

Visual Runtime may:

load manifest projection
resolve surface profile
resolve background profile
compose render tree
animate according to runtime rules
emit runtime state and error events

Visual Runtime must not:

author visual assets
edit persona truth
persist business truth
invent host-specific rendering semantics
perform hidden profile mutation


# ============================================================
# 5. HOST RESPONSIBILITY
# ============================================================

Host applications are responsible for:

obtaining approved input payloads
creating and owning the platform container
binding lifecycle to runtime session
reacting to runtime events
presenting loading / error / empty UI around runtime output

The host is not responsible for canonical composition logic.


# ============================================================
# 6. CANONICAL OUTCOME
# ============================================================

PersonaOS must treat Visual Runtime as the single
canonical execution component for persona display and
background display across approved surfaces.
