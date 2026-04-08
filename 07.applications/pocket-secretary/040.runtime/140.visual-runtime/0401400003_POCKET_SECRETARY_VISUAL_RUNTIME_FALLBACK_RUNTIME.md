# ============================================================
# POCKET SECRETARY VISUAL RUNTIME FALLBACK RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
should behave when runtime fallback occurs.


# ============================================================
# 2. FALLBACK PRINCIPLES
# ============================================================

If optional background fails:
continue persona-first render

If optional animation fails:
continue static-safe render

If non-critical asset times out:
allow runtime retry / fallback path

If terminal contract error occurs:
stop normal render path and show host error shell
