# ============================================================
# STREAMING OS VIEWER DISCOVERY AND NAVIGATION ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: viewer-discovery-and-navigation
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines:
- home meaning
- discovery meaning
- search meaning
- watch-entry meaning
- waiting-room and live-watch relation

# ============================================================
# 2. DESIGN POSITION
# ============================================================

StreamingOS is not only a backend for streams.
It is also a viewer-facing streaming platform.

Therefore,
discovery and navigation are core architecture responsibilities.

# ============================================================
# 3. HOME / DISCOVERY PRINCIPLE
# ============================================================

Viewer-side home should expose:
- recommendation surfaces
- ranking-linked surfaces
- live-now surfaces
- category/topic surfaces
- archive and clip discovery surfaces

These should remain distinguishable.

# ============================================================
# 4. SEARCH PRINCIPLE
# ============================================================

Search should support retrieval across:
- videos
- live streams
- clips
- channels
- creators
- broadcasters

Search meaning must remain distinct from recommendation meaning.

# ============================================================
# 5. WATCH ENTRY PRINCIPLE
# ============================================================

Viewer-side watch entry should preserve distinct states for:
- waiting room
- live watching
- archive watching
- clip watching

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS shall provide native viewer discovery
and navigation architecture
for home,
discovery,
search,
and watch-entry behavior,
without collapsing these meanings
into ranking-only or recommendation-only behavior.

