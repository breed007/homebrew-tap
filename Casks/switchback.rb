cask "switchback" do
  version "0.5.0"
  sha256 "8e73d086fb09608e7b397760f98e6d615918c643ab134079587a7edf2ab19992"

  url "https://github.com/breed007/switchback-macos/releases/download/v#{version}/Switchback-v#{version}-universal.zip"
  name "Switchback"
  desc "Switch between network locations from the menu bar"
  homepage "https://github.com/breed007/switchback-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Switchback.app"

  # v0.5 adds a privileged helper (an SMAppService LaunchDaemon). Stop it on uninstall.
  uninstall launchctl: "com.breed007.switchback.helper",
            quit:      "com.breed007.switchback"

  zap trash: "~/Library/Preferences/com.breed007.switchback.plist"
end
