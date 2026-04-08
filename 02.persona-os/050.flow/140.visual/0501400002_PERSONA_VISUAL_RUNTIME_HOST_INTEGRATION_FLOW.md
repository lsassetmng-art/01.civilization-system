# ============================================================
# PERSONA VISUAL RUNTIME HOST INTEGRATION FLOW
# ============================================================

status: canonical
layer: flow
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This flow defines how a host application
integrates with Visual Runtime.


# ============================================================
# 2. CANONICAL FLOW
# ============================================================

1. Host determines target surface class.
2. Host obtains canonical surface profile.
3. Host obtains manifest projection payload.
4. Host initializes Visual Runtime.
5. Host creates runtime session.
6. Host attaches platform container.
7. Runtime validates contracts.
8. Runtime resolves background.
9. Runtime composes persona layers.
10. Runtime binds render output.
11. Runtime emits render completed event.
12. Host reacts to events and user lifecycle changes.
13. Host disposes session when surface is destroyed.


# ============================================================
# 3. FAILURE FLOW
# ============================================================

If manifest validation fails:
enter terminal error state

If optional background fails:
continue with fallback background

If optional animation fails:
continue with static render

If host container is destroyed:
dispose session


# ============================================================
# 4. HOST DUTIES
# ============================================================

Host must:

choose surface class
provide container
listen for runtime events
dispose correctly

Host must not:

compose persona layers on its own
override canonical background priority
invent private runtime states
