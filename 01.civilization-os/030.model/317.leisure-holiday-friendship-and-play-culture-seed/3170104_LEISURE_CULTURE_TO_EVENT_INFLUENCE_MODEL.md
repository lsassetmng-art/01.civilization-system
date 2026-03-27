# ============================================================
# LEISURE CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: leisure-holiday-friendship-and-play-culture-seed
component: leisure-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- holiday_outing_tendency modifies city outing and domestic mobility events
- home_rest_tendency modifies household-centered recovery and quiet leisure events
- friend_group_activity_tendency modifies peer bonding and group recreation events
- family_outing_tendency modifies family cohesion and weekend movement events
- after_work_socializing_tendency modifies workplace bonding and nightlife spillover events
- drinking_nightlife_tendency modifies tavern, bar, and late-hour district events
- arts_and_music_leisure_tendency modifies cultural participation and creative scene events
- sports_and_body_leisure_tendency modifies community exercise and recreational body culture events
- local_festival_participation_tendency modifies annual event participation intensity
- private_hobby_tendency modifies solitary leisure and self-directed recovery events
- class_leisure_gap_tendency modifies visible inequality in free-time access
- urban_night_visibility_tendency modifies late-hour city atmosphere and social density


# ============================================================
# 2. FINAL RULE
# ============================================================

Leisure-culture indicators must be usable
as modifiers for friendship, city activity, festival, and emotional recovery events.
