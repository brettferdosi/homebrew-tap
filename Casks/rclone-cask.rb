cask "rclone-cask" do
  version "1.57.0" # update sha256 hashes with version

  if Hardware::CPU.intel?
    sha256 "c25cfe8c61da6da361940904511fcafb0f305e6eaa926f9871045de55e6861a4"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    # arm version untested
    sha256 "62ba75131d011310d74fe68be4e8757fb0d8bc373ecbb4112ead7dd031545ef0"
    binary "rclone-v#{version}-osx-arm64/rclone"
    manpage "rclone-v#{version}-osx-arm64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-arm64.zip",
      verified: "github.com/rclone/rclone/"
  end

  name "rclone-cask"
  desc "rclone cask to work around lack of mount support in the formula version"
  homepage "https://rclone.org/"
  appcast "https://github.com/rclone/rclone/releases.atom"

  depends_on cask: "macfuse"
  conflicts_with formula: "rclone"
end
