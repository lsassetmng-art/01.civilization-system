# ============================================================
# NAMECARD PLATFORM IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for platform support.

implementation_rules:
- preserve shared business rules across iPhone, Android, tablet, and PC
- implement adaptive layout by screen size / interaction mode
- keep mobile capture path simple and fast
- keep PC migration/review path information-dense
- avoid platform-only business features unless explicitly approved
- test key paths on mobile, tablet, and PC separately

priority_guidance:
- Phase A must not assume phone-only support
- image capture flow should be optimized first for mobile
- migration/import and management review should be optimized first for PC
- tablet should support review-oriented and meeting-prep flows well

