import type { RequestMeta, Uuid } from "../contracts/types";

export interface ProjectionRepository {
  getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null>;
  enqueueProjectionRefresh(assetId: Uuid, targets: string[], meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class ProjectionService {
  constructor(private readonly repository: ProjectionRepository) {}

  async getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null> {
    return this.repository.getExhibitionProjection(assetId);
  }

  async enqueueProjectionRefresh(
    assetId: Uuid,
    targets: string[],
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.enqueueProjectionRefresh(assetId, targets, meta);
  }
}
