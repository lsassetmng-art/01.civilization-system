import type { RequestMeta, Uuid } from "../contracts/types";
import type { ProjectionRepository } from "../services/projection-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_PROJECTION_SQL } from "./sql/staticart-projection-sql";

export class ProjectionRepositoryImpl implements ProjectionRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_PROJECTION_SQL.selectExhibitionProjection, [
      assetId,
    ]);

    return result.rows[0] ?? null;
  }

  async enqueueProjectionRefresh(
    assetId: Uuid,
    targets: string[],
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_PROJECTION_SQL.enqueueProjectionRefreshSkeleton, [
      assetId,
      targets,
    ]);

    return {
      ...(result.rows[0] ?? {}),
      queued: true,
    };
  }
}
