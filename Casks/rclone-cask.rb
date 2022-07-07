cask "rclone-cask" do
  version "1.58.1" # update sha256 hashes with version

  if Hardware::CPU.intel?
    sha256 "03b104accc26d5aec14088c253ea5a6bba3263ae00fc403737cabceecad9eae9"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    # arm version untested
    sha256 "eb547bd0ef2037118a01003bed6cf00a1d6e6975b6f0a73cb811f882a3c3de72"
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
