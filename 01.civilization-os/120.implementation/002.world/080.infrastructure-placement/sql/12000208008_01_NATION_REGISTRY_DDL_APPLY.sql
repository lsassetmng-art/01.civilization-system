\set ON_ERROR_STOP on

BEGIN;

CREATE TABLE civilization.nation_registry (
  nation_id uuid NOT NULL,
  nation_code text NOT NULL,
  nation_name text NOT NULL,
  nation_status text NOT NULL,
  source_state_version bigint NOT NULL,
  effective_from timestamptz NOT NULL,
  effective_until timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),

  CONSTRAINT pk_nation_registry
    PRIMARY KEY (nation_id),

  CONSTRAINT uq_nation_registry_code
    UNIQUE (nation_code),

  CONSTRAINT ck_nation_registry_code_nonempty
    CHECK (btrim(nation_code) <> ''),

  CONSTRAINT ck_nation_registry_name_nonempty
    CHECK (btrim(nation_name) <> ''),

  CONSTRAINT ck_nation_registry_status
    CHECK (
      nation_status IN (
        'active',
        'inactive',
        'dismantled',
        'archived'
      )
    ),

  CONSTRAINT ck_nation_registry_source_state_version
    CHECK (source_state_version > 0),

  CONSTRAINT ck_nation_registry_effective_period
    CHECK (
      effective_until IS NULL
      OR effective_until > effective_from
    )
);

ALTER TABLE civilization.territory_record
  ADD CONSTRAINT fk_territory_record_nation
  FOREIGN KEY (nation_id)
  REFERENCES civilization.nation_registry (nation_id)
  ON UPDATE RESTRICT
  ON DELETE RESTRICT;

ALTER TABLE civilization.facility_registry
  ADD CONSTRAINT fk_facility_registry_owner_nation
  FOREIGN KEY (owner_nation_id)
  REFERENCES civilization.nation_registry (nation_id)
  ON UPDATE RESTRICT
  ON DELETE RESTRICT;

ALTER TABLE civilization.nation_read_authorization
  ADD CONSTRAINT fk_nation_read_authorization_nation
  FOREIGN KEY (nation_id)
  REFERENCES civilization.nation_registry (nation_id)
  ON UPDATE RESTRICT
  ON DELETE RESTRICT;

COMMIT;
