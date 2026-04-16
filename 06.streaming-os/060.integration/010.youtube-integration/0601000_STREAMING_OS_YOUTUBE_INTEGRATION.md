# ============================================================
# STREAMING OS YOUTUBE INTEGRATION
# ============================================================

status: canonical-draft
system: streaming-os
domain: youtube-integration
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION PURPOSE
# ============================================================

This integration defines how StreamingOS
publishes canonical archive and clip assets
to YouTube as an external destination.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The YouTube integration is responsible for:
- receiving publish-ready asset context
- receiving publish settings
- executing target-specific publication linkage
- returning publish result data
- preserving external identifiers and remote result notes

# ============================================================
# 3. NON-RESPONSIBILITIES
# ============================================================

The YouTube integration does not replace:
- canonical asset ownership
- native StreamingOS reaction features
- internal ad control
- internal ranking existence
- internal tipping meaning

# ============================================================
# 4. REQUIRED INPUTS
# ============================================================

Typical integration inputs include:
- asset type
- asset id
- title
- description
- tags
- thumbnail reference
- visibility intent
- publish schedule
- principal context
- rights approval context

# ============================================================
# 5. REQUIRED OUTPUTS
# ============================================================

Typical integration outputs include:
- external video id
- external channel reference
- external video url reference
- visibility result
- remote processing state
- remote warning note
- remote error note

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

The YouTube integration
shall act as a downstream publication linkage
for canonical StreamingOS assets.

YouTube publication result
shall remain separate from canonical internal ownership,
native reactions,
native rankings,
internal ads,
and native monetization semantics.

