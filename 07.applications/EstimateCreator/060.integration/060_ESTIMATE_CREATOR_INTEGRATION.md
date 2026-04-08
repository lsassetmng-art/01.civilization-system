# ============================================================
# ESTIMATE CREATOR INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION POSITION
# ============================================================

EstimateCreator integrates with common BusinessOS capabilities
and ERP-connected services.

The application itself remains a business application,
not the global authority hub.

# ============================================================
# 2. PRIMARY INTEGRATION DOMAINS
# ============================================================

Primary integration domains:

- auth/session context
- sync capability
- app-internal sharing capability
- shared ERP publication capability
- ERP inventory reference capability
- premium license / entitlement state

# ============================================================
# 3. CONTRACT STYLE
# ============================================================

Integration contracts must preserve explicit status separation for:

- local save
- sync result
- share result
- publication result
- inventory freshness result
- premium entitlement result


# ============================================================
# 4. DEEPLINK AND SESSION INTEGRATION
# ============================================================

EstimateCreator integrates with BusinessOS-level shared session handling
for deeplink launch.

Deeplink may transport launch context,
but raw credentials must not be passed as deeplink business parameters.

Session identity should be resolved through shared session infrastructure,
not through credential-bearing route payloads.

