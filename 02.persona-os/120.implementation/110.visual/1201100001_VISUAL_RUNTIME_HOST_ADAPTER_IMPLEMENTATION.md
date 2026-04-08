# ============================================================
# VISUAL RUNTIME HOST ADAPTER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the implementation pattern
for host adapters embedding Visual Runtime.


# ============================================================
# 2. HOST ADAPTER ROLE
# ============================================================

A host adapter translates:

host lifecycle
host container reference
host callback registration

into canonical runtime interface usage.

The host adapter must not reimplement
composition semantics.


# ============================================================
# 3. REQUIRED IMPLEMENTATION PARTS
# ============================================================

1. RuntimeBootstrapAdapter
2. RuntimeSessionAdapter
3. ContainerBindingAdapter
4. RuntimeEventBridge
5. DisposalAdapter


# ============================================================
# 4. IMPLEMENTATION RULES
# ============================================================

1. Adapter must be thin.
2. Adapter must be testable.
3. Adapter must be host-specific, runtime semantics must not be host-specific.
4. Adapter must centralize session disposal.


# ============================================================
# 5. ANDROID HOST GUIDANCE
# ============================================================

For Android hosts such as PocketSecretary:

Fragment / View lifecycle owns session creation and disposal
View container binding must be explicit
Runtime events should be bridged into host-safe observers
Background loading must not block initial persona visibility
