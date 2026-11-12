cask "crossbar" do
  version "0.7.0"
  sha256 "e853388b04ea580c0278a604ef4c480faf1b3d397ab586941cabf910d05682a1"

  url "https://github.com/breed007/crossbar-macos/releases/download/v#{version}/crossbar-v#{version}-universal.zip"
  name "Crossbar"
  desc "Toggle network services from the menu bar"
  homepage "https://github.com/breed007/crossbar-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Crossbar.app"

  # Since 0.5, Crossbar can install a privileged helper (an SMAppService LaunchDaemon).
  # Stop it on uninstall.
  uninstall launchctl: "com.breed.Crossbar.helper",
            quit:      "com.breed.Crossbar"

  zap trash: "~/Library/Preferences/com.breed.Crossbar.plist"
end
