# ============================================================
# STATIC ART OS PERMISSION TEST MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

actors:
  - guest
  - signed_in_user
  - library_user
  - creator_owner
  - publisher_operator
  - review_admin
  - policy_admin
  - support_readonly
  - internal_integration
  - exhibition_builder_reader

must_test:
  - guest cannot favorite
  - signed_in_user can favorite visible detail
  - library_user can full open entitled asset
  - creator_owner cannot self-approve
  - review_admin can decide review
  - support_readonly cannot write
  - internal_integration cannot rewrite rights
  - exhibition_builder_reader cannot write canonical or projection data
