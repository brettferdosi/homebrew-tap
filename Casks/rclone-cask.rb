cask "rclone-cask" do
  version "1.63.1" # update sha256 hashes with version

  if Hardware::CPU.intel?
    sha256 "e6d749a36fc5258973fff424ebf1728d5c41a4482ea4a2b69a7b99ec837297e7"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    sha256 "45d5b7799b90d8d6cc2d926d7920383a606842162e41303f5044058f5848892c"
    binary "rclone-v#{version}-osx-arm64/rclone"
    manpage "rclone-v#{version}-osx-arm64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-arm64.zip",
      verified: "github.com/rclone/rclone/"
  end

  name "rclone-cask"
  desc "rclone cask to work around lack of mount support in the formula version"
  homepage "https://rclone.org/"
  livecheck do
    url "https://github.com/rclone/rclone/releases.atom"
  end

  depends_on cask: "macfuse"
  conflicts_with formula: "rclone"
end
