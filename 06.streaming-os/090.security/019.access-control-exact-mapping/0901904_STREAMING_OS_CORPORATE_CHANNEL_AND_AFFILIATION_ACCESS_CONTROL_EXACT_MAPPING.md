# ============================================================
# STREAMING OS CORPORATE CHANNEL AND AFFILIATION ACCESS CONTROL EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: access-control-exact-mapping
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCOPE
# ============================================================

This mapping covers:
- channel records
- channel profile states
- corporate oversight records
- affiliated streamer references

# ============================================================
# 2. READ RULES
# ============================================================

channel_record_read:
- allowed:
  - public viewers for public-facing subsets
  - channel owner
  - authorized company-side overseer
  - platform operator
- denied:
  - restricted internal subsets for unauthorized users

channel_profile_state_read:
- allowed:
  - public viewers for public-facing subsets
  - channel owner
  - authorized company-side overseer
  - platform operator
- denied:
  - restricted internal subsets for unauthorized users

corporate_oversight_record_read:
- allowed:
  - authorized company-side overseer
  - platform operator
- denied:
  - public viewers
  - unrelated creators

affiliated_streamer_reference_read:
- allowed:
  - authorized company-side overseer
  - affiliated streamer themselves where policy allows
  - platform operator
- denied:
  - public viewers by default

# ============================================================
# 3. WRITE RULES
# ============================================================

channel_record_update:
- allowed:
  - channel owner
  - delegated official company manager when company-owned
  - platform operator for explicit support correction only
- denied:
  - affiliated streamer by default unless explicitly delegated

channel_profile_state_update:
- allowed:
  - channel owner
  - delegated official company manager when company-owned
  - platform operator for explicit support correction only
- denied:
  - arbitrary viewers
  - unrelated creators

corporate_oversight_record_update:
- allowed:
  - authorized company-side overseer
  - platform operator with oversight authority
- denied:
  - affiliated participant by default
  - public viewers

affiliated_streamer_reference_update:
- allowed:
  - authorized company-side overseer
  - platform operator with oversight authority
- denied:
  - affiliated streamer by default for authority-changing updates

# ============================================================
# 4. OWNERSHIP DISTINCTION RULE
# ============================================================

Affiliated participation visibility
does not grant official company ownership authority by default.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Corporate channel and affiliation access control
shall separate:
- public channel visibility
- channel owner authority
- company oversight authority
- affiliated participant visibility

