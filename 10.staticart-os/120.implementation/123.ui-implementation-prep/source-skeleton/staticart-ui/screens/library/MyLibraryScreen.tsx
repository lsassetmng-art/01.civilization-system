import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface MyLibraryScreenProps {
  items: AssetSummaryViewModel[];
}

export function MyLibraryScreen(props: MyLibraryScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "My Library",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="All" items={props.items} />
    </ScreenShell>
  );
}
