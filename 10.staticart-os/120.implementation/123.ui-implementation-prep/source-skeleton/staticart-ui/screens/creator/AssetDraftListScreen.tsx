import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface AssetDraftListScreenProps {
  items: AssetSummaryViewModel[];
}

export function AssetDraftListScreen(props: AssetDraftListScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Asset Draft List",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}
