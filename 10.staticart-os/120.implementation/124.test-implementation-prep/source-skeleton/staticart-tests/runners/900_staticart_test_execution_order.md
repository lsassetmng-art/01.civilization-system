# ============================================================
# STATIC ART OS TEST EXECUTION ORDER
# ============================================================

recommended_order:
  - lifecycle-and-review.test.ts
  - entitlement-and-library.test.ts
  - policy-and-projection.test.ts
  - permission-and-audit.test.ts

reasoning:
  - lifecycle and review establish valid entity states
  - entitlement and library depend on valid publishable assets
  - policy and projection depend on published and governed states
  - audit and permission should validate across all prior flows
