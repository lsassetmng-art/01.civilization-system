# ============================================================
# TAX SYSTEM DETAIL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: tax-system-detail-ui-implementation
component: tax-system-detail-ui-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY RESPONSIBILITY
# ============================================================

Tax UI must implement:

- tax-base visibility
- rate visibility
- collection visibility
- exemption/relief visibility
- nonpayment/penalty visibility

# ============================================================
# 2. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. tax-base summary
2. rate summary
3. collection summary
4. exemption/relief summary
5. nonpayment/penalty summary

# ============================================================
# 3. FINAL RULE
# ============================================================

Tax system UI implementation must remain:

- tax-base-aware
- rate-aware
- collection-aware
- penalty-aware
