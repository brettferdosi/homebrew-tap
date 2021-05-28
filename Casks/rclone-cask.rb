cask "rclone-cask" do
  version "1.55.1"

  if Hardware::CPU.intel?
    sha256 "a226d27b749d8376ceb696401bd3186e9942d5ed055aba2a37cff5d835aa510a"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    # arm version untested
    sha256 "baf423bed15c4ecb7c5df42b23aea20137154e370146e3a834eca0e4cb20c837"
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
