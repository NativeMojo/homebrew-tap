cask "mojo-pulse" do
  version "1.16.3"
  sha256 "65b1ada9c4e9c8cbefad8c7dd931411c2d34fa9a61d579bbd221c50713589a52"

  url "https://github.com/NativeMojo/mojo-pulse/releases/download/v#{version}/MojoPulse-#{version}.dmg"
  name "Mojo Pulse"
  desc "Menu-bar system monitor and security-posture watcher"
  homepage "https://mojopulse.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MojoPulse.app"

  zap trash: [
    "~/Library/Application Support/MojoPulse",
    "~/Library/Caches/com.mojo.pulse",
    "~/Library/HTTPStorages/com.mojo.pulse",
    "~/Library/Preferences/com.mojo.pulse.plist",
    "~/Library/Saved Application State/com.mojo.pulse.savedState",
  ]
end
