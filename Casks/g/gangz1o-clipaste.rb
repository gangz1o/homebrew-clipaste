cask "gangz1o-clipaste" do
  version "2.1.5"
  sha256 "4d4426a1fb8747f4d8aa2ac2c323f552e67031db1c027125a9f240bc40e5d8b1"

  url "https://github.com/gangz1o/Clipaste/releases/download/v#{version}/Clipaste-v#{version}.dmg"
  name "Clipaste"
  desc "Native clipboard manager"
  homepage "https://github.com/gangz1o/Clipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clipaste.app"

  zap trash: [
    "~/Library/Application Support/com.gangz1o.clipaste",
    "~/Library/Caches/com.gangz1o.clipaste",
    "~/Library/Preferences/com.gangz1o.clipaste.plist",
    "~/Library/Saved Application State/com.gangz1o.clipaste.savedState",
  ]
end
