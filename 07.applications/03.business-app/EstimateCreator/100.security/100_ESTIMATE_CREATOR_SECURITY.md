# ============================================================
# ESTIMATE CREATOR SECURITY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SECURITY OBJECTIVE
# ============================================================

EstimateCreator must protect estimate-related business data
in both online and offline usage.

# ============================================================
# 2. PRIMARY SECURITY TARGETS
# ============================================================

Primary targets:

- local auth context
- estimate records
- memo records
- share target records
- pending operation queue
- publication request data
- cached inventory reference data
- premium entitlement cache

# ============================================================
# 3. SECURITY PRINCIPLES
# ============================================================

Security must preserve:

- least necessary access
- protected local storage
- explicit share visibility
- explicit authority boundary
- fail closed on uncertain authority state

# ============================================================
# 4. OFFLINE SECURITY
# ============================================================

Offline security requires:

- protected device-local storage
- bounded cached auth validity
- no silent authority escalation
- no false completion signaling

