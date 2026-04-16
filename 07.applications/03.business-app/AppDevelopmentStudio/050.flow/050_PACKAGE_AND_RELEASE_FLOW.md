# ============================================================
# PACKAGE AND RELEASE FLOW
# ============================================================

flow:
artifacts ready
-> package assembly
-> release checks
-> optional Git tag support
-> release-ready outputs
