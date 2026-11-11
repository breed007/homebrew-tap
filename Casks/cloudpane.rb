cask "cloudpane" do
  version "1.0"
  sha256 "30928bff2552addb05130c494695a4988a4c2f0421fb8a46450e3d5a2c91ea37"

  url "https://github.com/breed007/Cloudpane/releases/download/v#{version}/Cloudpane-#{version}.zip"
  name "Cloudpane"
  desc "Read-only audit of cloud storage folders, with no logins"
  homepage "https://github.com/breed007/Cloudpane"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cloudpane.app"

  uninstall quit: "com.404tools.cloudpane"

  # The inventory database, plans and settings live in the app's sandbox container.
  zap trash: [
    "~/Library/Application Scripts/com.404tools.cloudpane",
    "~/Library/Containers/com.404tools.cloudpane",
  ]
end
