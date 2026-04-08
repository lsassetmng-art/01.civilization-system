# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines runtime-side host behavior
required from PocketSecretary.


# ============================================================
# 2. REQUIRED HOST STEPS
# ============================================================

PocketSecretary runtime behavior must follow:

select surface
obtain manifest projection
initialize host adapter
create runtime session
attach render container
observe runtime events
dispose session on surface destruction


# ============================================================
# 3. PROHIBITIONS
# ============================================================

PocketSecretary must not:

reuse disposed session
skip explicit disposal
attach one session to multiple conflicting containers
treat terminal session as recoverable
