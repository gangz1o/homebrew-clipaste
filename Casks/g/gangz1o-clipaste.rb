cask "gangz1o-clipaste" do
  version "2.2.12"
  sha256 "c97089ba8da0dc0faf16bace59523b159a615023495b5654cde48551e9e965ba"

  url "https://github.com/gangz1o/Clipaste/releases/download/v#{version}/Clipaste-v#{version}.dmg"
  name "Clipaste"
  desc "Native clipboard manager"
  homepage "https://github.com/gangz1o/Clipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Clipaste.app"

  zap trash: [
    "~/Library/Application Support/com.gangz1o.clipaste",
    "~/Library/Caches/com.gangz1o.clipaste",
    "~/Library/Preferences/com.gangz1o.clipaste.plist",
    "~/Library/Saved Application State/com.gangz1o.clipaste.savedState",
  ]
end
