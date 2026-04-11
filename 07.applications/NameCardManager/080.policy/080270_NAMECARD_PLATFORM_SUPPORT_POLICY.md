# ============================================================
# NAMECARD PLATFORM SUPPORT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines platform support policy and device-role separation.

policy_rules:
- NameCardManager must support iPhone, Android, tablet, and PC
- mobile is the primary usage surface
- tablet is the expanded review surface
- PC is the stronger management and migration surface
- authorization, visibility, and publication rules must remain consistent across platforms
- device-specific UI adaptation must not create business-rule divergence

