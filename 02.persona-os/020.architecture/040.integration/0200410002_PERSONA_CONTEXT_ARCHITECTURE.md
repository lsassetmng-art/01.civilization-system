# ============================================================
# PERSONA CONTEXT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
component: persona-context

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the implementable architecture
of context handling in PersonaOS.


# ============================================================
# ROLE
# ============================================================

Context architecture integrates
environmental, social, temporal
and internal signals into one
execution context.


# ============================================================
# CONTEXT SOURCES
# ============================================================

persona_state
schedule state
communication context
social context
runtime trigger
memory-derived relevance


# ============================================================
# CONTEXT RULE
# ============================================================

A context snapshot must be assembled
before reasoning begins.

Reasoning must not use partial
or undefined context state.


# ============================================================
# OUTPUT
# ============================================================

The context subsystem produces:

- context_state
- attention_context
- decision_context


# ============================================================
# IMPLEMENTATION NOTES
# ============================================================

Recommended implementation modules:

ContextAssembler
ContextResolver
ContextSnapshotBuilder


# ============================================================
# STATUS
# ============================================================

This document defines the
implementable context architecture
for PersonaOS.

