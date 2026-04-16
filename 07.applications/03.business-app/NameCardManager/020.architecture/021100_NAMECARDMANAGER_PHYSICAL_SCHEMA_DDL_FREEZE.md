# ============================================================
# NAMECARDMANAGER PHYSICAL SCHEMA DDL FREEZE
# ============================================================

status: canonical
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes DDL-adjacent physical schema decisions before execution.

main_freeze_points:
- primary keys are uuid for all primary records
- namecard_record unique scope is per source record id only, not per full_name
- namecard_detail_profile is one-to-one with namecard_record
- namecard_app_share_link unique key is (namecard_id, share_target_id)
- logical delete uses deleted_at
- canonical_version increments on every successful record mutation
- updated_at must be maintained on every mutation
- company boundary must be preserved for publication-related records
- audit/history tables are append-oriented

image_handling_boundary:
- image binary is outside relational row payload
- record stores metadata/path/reference only
- front/back partial presence is allowed
- parent record delete does not imply immediate binary purge without lifecycle policy

rls_freeze_direction:
- owner can see own records
- shared_viewer can see only granted shared records
- publication-related privileged roles may see request/result records by company authorization
- audit visibility is narrower than basic record visibility
