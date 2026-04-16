# ============================================================
# STREAMING OS YOUTUBE PUBLISH SETTING UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: youtube-publish-setting-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for YouTube publish settings in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must allow users to:
- review whether an asset is publishable
- edit YouTube-specific metadata
- understand review requirements
- submit or queue publication
- review external result state

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- asset summary
- ownership summary
- review status panel
- YouTube metadata editor
- visibility setting section
- schedule publish section
- publish execution section
- push result section
- retry / failure section

# ============================================================
# 4. ASSET SUMMARY
# ============================================================

Show:
- asset type
- source session
- archive or clip status
- canonical asset existence
- last modified timestamp

# ============================================================
# 5. REVIEW STATUS PANEL
# ============================================================

Show:
- rights review
- safety review
- company approval review
- blocked / approved / pending state

Publication submission should be blocked
while required review is unresolved.

# ============================================================
# 6. METADATA EDITOR
# ============================================================

Allow editing:
- title
- description
- tags
- thumbnail
- visibility
- publish schedule
- monetization intent

# ============================================================
# 7. PUSH RESULT PANEL
# ============================================================

Show:
- job status
- attempt count
- last attempt
- external video id
- external visibility result
- failure reason
- retry next time

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The YouTube publish setting UI
shall treat YouTube as an external publication destination,
while clearly preserving canonical StreamingOS asset ownership.

