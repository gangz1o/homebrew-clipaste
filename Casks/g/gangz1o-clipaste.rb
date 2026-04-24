cask "gangz1o-clipaste" do
  version "1.1.9"
  sha256 "441eb414b92a10064b36c112f5113169cb96db25e8e3fee4dab851fae9aef86c"

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
