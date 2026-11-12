cask "switchback" do
  version "0.7.0"
  sha256 "fb1cb8f72732fb06e21d03a10a2a86723d1119c17cdc00366b95a2434ff63b77"

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
