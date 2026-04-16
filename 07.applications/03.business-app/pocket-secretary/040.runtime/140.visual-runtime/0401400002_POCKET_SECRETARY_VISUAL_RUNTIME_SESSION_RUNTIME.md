# ============================================================
# POCKET SECRETARY VISUAL RUNTIME SESSION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SESSION VIEW
# ============================================================

From PocketSecretary side,
a runtime session is:

created
attached
ready
rendering-capable
paused
disposed
or failed


# ============================================================
# 2. HOST RULE
# ============================================================

PocketSecretary must bind one host-visible render lifecycle
to one runtime session lifecycle.

Screen replacement or container destruction
must trigger deterministic session cleanup.
