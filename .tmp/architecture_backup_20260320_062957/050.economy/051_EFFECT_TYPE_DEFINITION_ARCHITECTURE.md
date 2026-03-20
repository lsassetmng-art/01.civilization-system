# ============================================================
# EFFECT TYPE DEFINITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Effect types define all possible changes in the system.

# ============================================================
# PRINCIPLES
# ============================================================

- effects must be atomic
- effects must be composable
- effects must be deterministic

# ============================================================
# EFFECT TYPES
# ============================================================

STAT:
- stat_add
- stat_mul
- stat_set

SKILL:
- skill_unlock
- skill_exp_add
- skill_level_set

ACCESS:
- unlock_mode
- unlock_feature
- unlock_story
- unlock_region

ECONOMY:
- currency_add
- currency_sub
- currency_set

ITEM:
- item_grant
- item_remove
- item_unlock

STATUS:
- status_apply
- status_remove

TIME:
- time_skip
- time_extend

RELATION:
- relation_add
- relation_set
- relation_unlock

FLAG:
- flag_set
- flag_unset

PROGRESSION:
- progress_add
- progress_set
- progress_unlock

EDUCATION:
- exam_unlock
- exam_attempt
- exam_pass
- school_unlock

COMPANY:
- job_unlock
- interview_unlock
- intern_unlock

META:
- cooldown_set
- limit_extend

# ============================================================
# FINAL RULE
# ============================================================

All system changes must be expressed as effects.

