cask "gangz1o-clipaste" do
  version "1.1.3"
  sha256 "d61db75a7d9c86e362d3b59b22cf4b46561a8804e695267547025d0b961b4eaf"

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
