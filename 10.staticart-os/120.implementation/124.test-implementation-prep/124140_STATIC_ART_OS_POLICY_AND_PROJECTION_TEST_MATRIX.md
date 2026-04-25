# ============================================================
# STATIC ART OS POLICY AND PROJECTION TEST MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

must_test:
  - region block affects full open
  - age block affects sample and full open
  - restricted state stops sample, purchase, full open
  - delisted preserves existing owner access
  - rights change produces blocked_by_rights_change without history deletion
  - publish updates cx22073jw reference areas
  - exhibition eligibility refreshes after rights change
  - projection remains derived and not canonical
