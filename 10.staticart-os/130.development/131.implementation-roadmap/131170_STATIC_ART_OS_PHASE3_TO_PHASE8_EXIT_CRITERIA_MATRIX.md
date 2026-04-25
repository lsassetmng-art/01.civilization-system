# ============================================================
# STATIC ART OS PHASE3 TO PHASE8 EXIT CRITERIA MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_3_exit:
  - self check works
  - review request works
  - review decision works
  - publish marketplace works
  - publish library only works
  - delist/restrict/archive work
  - audit events are generated
  - projection refresh enqueue is bound
  - invalid lifecycle transitions are rejected

phase_4_exit:
  - entitlement resolution works
  - owned_permanent works
  - subscription_access works
  - owned_and_subscription_access works
  - access session full/sample rules work
  - region/age/rights blocks work
  - purchase/subscription reflection entry points work

phase_5_exit:
  - my library works
  - continue reading works
  - continue viewing works
  - reader progress persistence works
  - viewer progress persistence works
  - favorite add/remove works
  - annotations work
  - favorite survives entitlement loss scenario

phase_6_exit:
  - review queue UI works
  - review detail UI works
  - audit detail UI works
  - support_readonly behavior works
  - admin permission boundaries work

phase_7_exit:
  - projection search reference publish works
  - preview summary reference publish works
  - rights reference publish works
  - continuity signal publish works
  - review risk reference publish works
  - exhibition reference publish works
  - sync is one-way from canonical to CX22073JW

phase_8_exit:
  - acceptance groups pass
  - permission regression passes
  - policy/projection regression passes
  - unresolved blockers are named or cleared
