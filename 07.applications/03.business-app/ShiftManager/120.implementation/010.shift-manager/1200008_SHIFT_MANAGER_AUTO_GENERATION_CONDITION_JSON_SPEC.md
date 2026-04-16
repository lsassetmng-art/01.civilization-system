# ============================================================
# SHIFT MANAGER AUTO GENERATION CONDITION JSON SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: auto-generation-condition-json-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the JSON structure
used for condition-based automatic draft generation in ShiftManager.

This JSON is intended to be stored in:
- shift_generation_rule.condition_json

and consumed by:
- generation rule evaluation
- draft auto-generation
- warning/shortage calculation

# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

principles:
- generation creates draft only
- JSON should remain jsonb-centered initially
- hard rules and soft rules must be distinguishable
- shortage/warning output must be explainable from rule input
- rule structure should be stable even if internal generator changes
- missing optional arrays should be treated as empty arrays
- missing optional objects should be treated as empty objects

# ============================================================
# 3. TOP-LEVEL SHAPE
# ============================================================

top_level_shape:
{
  "business_days": [],
  "slot_requirements": [],
  "person_constraints": [],
  "priority_policy": {},
  "hard_rules": {},
  "soft_rules": {}
}

top_level_keys:
business_days:
- type: array[string]
- required: false
- default: []

slot_requirements:
- type: array[object]
- required: true
- minimum_items: 1

person_constraints:
- type: array[object]
- required: false
- default: []

priority_policy:
- type: object
- required: false
- default: {}

hard_rules:
- type: object
- required: false
- default: {}

soft_rules:
- type: object
- required: false
- default: {}

# ============================================================
# 4. BUSINESS_DAYS
# ============================================================

business_days_allowed_values:
- mon
- tue
- wed
- thu
- fri
- sat
- sun

example:
[
  "mon",
  "tue",
  "wed",
  "thu",
  "fri"
]

meaning:
Defines which weekdays are considered valid assignment generation days
for the target period.

# ============================================================
# 5. SLOT_REQUIREMENTS
# ============================================================

slot_requirement_shape:
{
  "slot_code": "morning",
  "start_time": "09:00:00",
  "end_time": "13:00:00",
  "required_headcount": 2,
  "required_roles": [
    {
      "role_code": "cashier",
      "count": 1
    }
  ]
}

slot_requirement_fields:
slot_code:
- type: string
- required: true
- example: morning

start_time:
- type: string
- required: true
- format: HH:MM:SS

end_time:
- type: string
- required: true
- format: HH:MM:SS

required_headcount:
- type: integer
- required: true
- min: 1

required_roles:
- type: array[object]
- required: false
- default: []

required_role_shape:
{
  "role_code": "cashier",
  "count": 1
}

required_role_fields:
role_code:
- type: string
- required: true

count:
- type: integer
- required: true
- min: 1

full_example:
[
  {
    "slot_code": "morning",
    "start_time": "09:00:00",
    "end_time": "13:00:00",
    "required_headcount": 2,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      }
    ]
  },
  {
    "slot_code": "afternoon",
    "start_time": "13:00:00",
    "end_time": "18:00:00",
    "required_headcount": 3,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      },
      {
        "role_code": "leader",
        "count": 1
      }
    ]
  }
]

# ============================================================
# 6. PERSON_CONSTRAINTS
# ============================================================

person_constraint_shape:
{
  "person_id": "uuid",
  "available_weekdays": ["mon", "tue", "wed"],
  "available_time_ranges": [
    {
      "start_time": "09:00:00",
      "end_time": "18:00:00"
    }
  ],
  "requested_days_off": ["2026-04-08"],
  "blocked_dates": [],
  "max_daily_hours": 8,
  "max_weekly_assignments": 4,
  "max_consecutive_days": 3
}

person_constraint_fields:
person_id:
- type: string
- required: true
- format: uuid

available_weekdays:
- type: array[string]
- required: false
- default: []

available_time_ranges:
- type: array[object]
- required: false
- default: []

available_time_range_shape:
{
  "start_time": "09:00:00",
  "end_time": "18:00:00"
}

requested_days_off:
- type: array[string]
- required: false
- default: []
- format: YYYY-MM-DD

blocked_dates:
- type: array[string]
- required: false
- default: []
- format: YYYY-MM-DD

max_daily_hours:
- type: integer
- required: false
- min: 1

max_weekly_assignments:
- type: integer
- required: false
- min: 1

max_consecutive_days:
- type: integer
- required: false
- min: 1

full_example:
[
  {
    "person_id": "uuid-1",
    "available_weekdays": ["mon", "tue", "wed"],
    "available_time_ranges": [
      {
        "start_time": "09:00:00",
        "end_time": "18:00:00"
      }
    ],
    "requested_days_off": ["2026-04-08"],
    "blocked_dates": [],
    "max_daily_hours": 8,
    "max_weekly_assignments": 4,
    "max_consecutive_days": 3
  },
  {
    "person_id": "uuid-2",
    "available_weekdays": ["thu", "fri", "sat"],
    "available_time_ranges": [
      {
        "start_time": "10:00:00",
        "end_time": "19:00:00"
      }
    ],
    "requested_days_off": [],
    "blocked_dates": ["2026-04-11"],
    "max_daily_hours": 8,
    "max_weekly_assignments": 5,
    "max_consecutive_days": 4
  }
]

# ============================================================
# 7. PRIORITY_POLICY
# ============================================================

priority_policy_shape:
{
  "balanced_assignment": true,
  "prefer_same_role_continuity": true,
  "prefer_veteran": false,
  "prefer_low_cost": false
}

priority_policy_fields:
balanced_assignment:
- type: boolean
- required: false
- default: false

prefer_same_role_continuity:
- type: boolean
- required: false
- default: false

prefer_veteran:
- type: boolean
- required: false
- default: false

prefer_low_cost:
- type: boolean
- required: false
- default: false

meaning:
These settings influence tie-break and soft selection behavior,
not absolute hard blocking behavior.

# ============================================================
# 8. HARD_RULES
# ============================================================

hard_rules_shape:
{
  "must_respect_requested_days_off": true,
  "must_respect_max_daily_hours": true,
  "must_respect_max_consecutive_days": true
}

hard_rules_fields:
must_respect_requested_days_off:
- type: boolean
- required: false
- default: true

must_respect_max_daily_hours:
- type: boolean
- required: false
- default: true

must_respect_max_consecutive_days:
- type: boolean
- required: false
- default: true

meaning:
Violating a hard rule should block assignment
or create explicit unassigned outcome rather than silent fallback.

# ============================================================
# 9. SOFT_RULES
# ============================================================

soft_rules_shape:
{
  "prefer_balanced_distribution": true,
  "allow_priority_fallback": true,
  "warn_on_skill_shortage": true
}

soft_rules_fields:
prefer_balanced_distribution:
- type: boolean
- required: false
- default: false

allow_priority_fallback:
- type: boolean
- required: false
- default: true

warn_on_skill_shortage:
- type: boolean
- required: false
- default: true

meaning:
Violating a soft rule may still allow assignment,
but should produce warning or lower-priority result.

# ============================================================
# 10. COMPLETE EXAMPLE
# ============================================================

complete_example:
{
  "business_days": ["mon", "tue", "wed", "thu", "fri", "sat"],
  "slot_requirements": [
    {
      "slot_code": "morning",
      "start_time": "09:00:00",
      "end_time": "13:00:00",
      "required_headcount": 2,
      "required_roles": [
        {
          "role_code": "cashier",
          "count": 1
        }
      ]
    },
    {
      "slot_code": "afternoon",
      "start_time": "13:00:00",
      "end_time": "18:00:00",
      "required_headcount": 3,
      "required_roles": [
        {
          "role_code": "cashier",
          "count": 1
        },
        {
          "role_code": "leader",
          "count": 1
        }
      ]
    }
  ],
  "person_constraints": [
    {
      "person_id": "uuid-1",
      "available_weekdays": ["mon", "tue", "wed"],
      "available_time_ranges": [
        {
          "start_time": "09:00:00",
          "end_time": "18:00:00"
        }
      ],
      "requested_days_off": ["2026-04-08"],
      "blocked_dates": [],
      "max_daily_hours": 8,
      "max_weekly_assignments": 4,
      "max_consecutive_days": 3
    }
  ],
  "priority_policy": {
    "balanced_assignment": true,
    "prefer_same_role_continuity": true,
    "prefer_veteran": false,
    "prefer_low_cost": false
  },
  "hard_rules": {
    "must_respect_requested_days_off": true,
    "must_respect_max_daily_hours": true,
    "must_respect_max_consecutive_days": true
  },
  "soft_rules": {
    "prefer_balanced_distribution": true,
    "allow_priority_fallback": true,
    "warn_on_skill_shortage": true
  }
}

# ============================================================
# 11. VALIDATION RULES
# ============================================================

validation_rules:
- slot_requirements must have at least 1 item
- each slot_requirement.start_time must be < end_time
- required_headcount must be >= 1
- required_roles.count must be >= 1
- available_time_ranges.start_time must be < end_time
- max_daily_hours / max_weekly_assignments / max_consecutive_days must be positive integers
- business_days values must be from allowed weekday enum
- requested_days_off and blocked_dates must be valid dates
- duplicate person_id entries should be rejected or normalized before save

# ============================================================
# 12. WARNING MAPPING DIRECTION
# ============================================================

typical_warning_mapping:
unassigned_slot:
- slot requirement could not be filled

requested_day_off_conflict:
- only possible when fallback or rule relaxation is allowed

consecutive_work_risk:
- generated assignment approaches or exceeds preferred continuity limit

imbalance_warning:
- distribution is significantly uneven

skill_shortage:
- role/skill demand could not be perfectly satisfied

priority_fallback:
- lower-priority rule path was used to complete assignment

# ============================================================
# 13. STORAGE / EVOLUTION POLICY
# ============================================================

storage_policy:
- store exact JSON in shift_generation_rule.condition_json
- preserve original rule JSON for auditability
- do not silently rewrite user intent fields
- future fields may be added additively
- unknown fields should be rejected or explicitly ignored by versioned parser policy

evolution_policy:
- additive extension preferred
- no destructive shape changes without version note
- internal generator may evolve without changing stable external JSON names

# ============================================================
# 14. CONCLUSION
# ============================================================

This document fixes the stable JSON foundation
for ShiftManager automatic draft generation rules.

It is intended to keep:
- payload design
- database storage
- generation logic input
- warning/result explainability

aligned before implementation.

