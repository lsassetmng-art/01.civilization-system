# ============================================================
# MODEL BOOK
# SPORTS DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 099
model_id: 0000
scope: civilization.model.sports

owner: Boss
prepared_by: Zero


# PURPOSE

Define organized sports systems and athletic ecosystems.


# MODEL LIST

099001 sport
099002 sport_category
099003 sport_rule
099004 sport_governing_body
099005 sport_league
099006 sport_team
099007 sport_athlete
099008 sport_coach
099009 sport_match
099010 sport_tournament
099011 sport_season
099012 sport_venue
099013 sport_training_program
099014 sport_medical_support
099015 sport_performance_record
099016 sport_statistics
099017 sport_scouting
099018 sport_transfer
099019 sport_contract
099020 sport_salary
099021 sport_sponsorship
099022 sport_broadcast
099023 sport_media
099024 sport_fan_base
099025 sport_ticketing
099026 sport_merchandise
099027 sport_event
099028 sport_host_city
099029 sport_infrastructure
099030 sport_development_program
099031 sport_academy
099032 sport_youth_program
099033 sport_policy
099034 sport_regulation
099035 sport_ethics_committee
099036 sport_integrity_system
099037 sport_doping_control
099038 sport_federation
099039 sport_global_event
099040 sport_olympic_committee
099041 sport_research
099042 sport_data
099043 sport_analytics
099044 sport_market
099045 sport_economics
099046 sport_culture
099047 sport_history
099048 sport_technology
099049 sport_innovation
099050 sport_system_state


# STATES

training
competition
offseason
retired


# EVENTS

match_played
tournament_start
tournament_end
record_broken


# RELATIONS

sports -> culture
sports -> media
sports -> economy


# METRICS

athlete_performance
league_revenue
fan_engagement

