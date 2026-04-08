# ============================================================
# BUILD DECISION FLOW
# ============================================================

flow:
build-capable output ready
-> build policy resolved
-> environment capability checked
-> build executed or skipped or externalized
