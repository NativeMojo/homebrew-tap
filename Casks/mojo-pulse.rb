cask "mojo-pulse" do
  version "1.22.1"
  sha256 "abee8e564aa66a138cb81eeea35b182e8504a8db4caabbccde1c656ab6ab57c9"

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
