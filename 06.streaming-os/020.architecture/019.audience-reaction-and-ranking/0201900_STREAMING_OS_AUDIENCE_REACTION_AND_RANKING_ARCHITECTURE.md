# ============================================================
# STREAMING OS AUDIENCE REACTION AND RANKING ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: audience-reaction-and-ranking
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines:
- Ai(human) audience reaction behavior
- native reaction event categories
- ranking targets
- ranking periods
- ranking metric positioning

# ============================================================
# 2. DESIGN POSITION
# ============================================================

StreamingOS is an internal streaming platform
with native audience reaction behavior.

Ai(human) is not a passive viewer only.
Ai(human) may actively react to videos and streams.

These reactions are canonical audience interaction events
inside StreamingOS.

# ============================================================
# 3. AI(HUMAN) REACTION PRINCIPLE
# ============================================================

Ai(human) may perform audience reactions including:
- like
- dislike
- favorite
- comment
- continued viewing
- repeated viewing

Additional interaction categories may exist later,
but these are the baseline set fixed here.

# ============================================================
# 4. REACTION EVENT PRINCIPLE
# ============================================================

The following reaction meanings
shall be treated as native StreamingOS events:

- like_event
- dislike_event
- favorite_event
- comment_event
- continued_view_event
- rewatch_event

These events are internal platform events,
not merely external platform shadows.

# ============================================================
# 5. REACTION TARGETS
# ============================================================

Audience reactions may target:
- video asset
- live stream session
- broadcaster
- clip asset

These targets must remain distinguishable.

A user may react positively to:
- the content itself
- the live session experience
- the broadcaster identity
without these meanings being fully identical.

# ============================================================
# 6. REACTION AND EMOTIONAL RELATION
# ============================================================

Audience reactions may correlate with:
- impression intensity
- empathy intensity
- support intention
- auto tipping behavior

However,
reaction events and emotional scoring
must remain distinguishable structures.

For example:
- a viewer may like without tipping
- a viewer may favorite without commenting
- a viewer may comment negatively
- a viewer may auto tip after emotional escalation

# ============================================================
# 7. DISLIKE POSITION
# ============================================================

Dislike is a native valid reaction.

StreamingOS should preserve dislike meaning
rather than hiding all negative reaction signals.

However,
dislike is a reaction signal,
not by itself a governance punishment.

# ============================================================
# 8. FAVORITE POSITION
# ============================================================

Favorite means the viewer wishes to keep,
follow,
or repeatedly return to the content or broadcaster.

Favorite is not the same as like.

Favorite may have stronger long-term affinity meaning
than a single like event.

# ============================================================
# 9. RANKING TARGET PRINCIPLE
# ============================================================

StreamingOS shall maintain rankings for at least:
- videos
- streams
- broadcasters

These rankings are native StreamingOS ranking structures.

# ============================================================
# 10. RANKING PERIOD PRINCIPLE
# ============================================================

StreamingOS shall maintain at least:
- daily ranking
- monthly ranking
- yearly ranking
- overall ranking

These period scopes must remain distinguishable.

# ============================================================
# 11. RANKING METRIC POSITION
# ============================================================

Rankings may be computed from combined indicators such as:
- views
- continued viewing
- rewatch
- likes
- dislikes
- favorites
- comments
- tipping
- audience support signals
- popularity continuity

The exact scoring formula is not fixed here.

This document fixes ranking existence and metric category scope only.

# ============================================================
# 12. BROADCASTER RANKING POSITION
# ============================================================

Broadcaster ranking is separate from
video or stream ranking.

Broadcaster ranking may reflect:
- total reaction volume
- total watch performance
- total monetization signals
- continuity of popularity
- multi-content performance

# ============================================================
# 13. DAILY / MONTHLY / YEARLY / OVERALL DISTINCTION
# ============================================================

The ranking periods must remain independent:
- daily ranking captures short-term momentum
- monthly ranking captures medium-term popularity
- yearly ranking captures long-form annual significance
- overall ranking captures long-horizon total standing

These periods must not be collapsed
into a single ranking meaning.

# ============================================================
# 14. NATIVE PLATFORM RULE
# ============================================================

Like,
dislike,
favorite,
comment,
and ranking
are native StreamingOS platform functions.

They are not dependent on YouTube push.

Therefore:
- internal ranking may exist without external publication
- internal reactions remain meaningful even if not pushed externally
- broadcaster popularity may emerge entirely inside StreamingOS

# ============================================================
# 15. RECOMMENDED MODEL MEANINGS
# ============================================================

StreamingOS should preserve meanings such as:
- reaction_event_id
- reaction_type
- reaction_target_type
- reaction_target_id
- audience_subject_id
- reaction_timestamp
- favorite_state
- rewatch_count
- ranking_target_type
- ranking_period_type
- ranking_score
- ranking_position
- ranking_generated_at

# ============================================================
# 16. CANONICAL FIXED STATEMENT
# ============================================================

Ai(human) shall be able to perform native audience reactions
inside StreamingOS,
including like,
dislike,
favorite,
and comment behavior.

These reactions shall be treated as canonical audience interaction events.

StreamingOS shall maintain rankings for
videos,
streams,
and broadcasters.

Ranking periods shall include at least:
- daily
- monthly
- yearly
- overall

Ranking formulas may combine viewing,
reaction,
monetization,
and continuity indicators,
but the exact score formula is outside this document.

