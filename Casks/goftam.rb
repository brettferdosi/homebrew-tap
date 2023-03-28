cask "goftam" do
  version "0.3"
  sha256 "234774a2813b57d9656e21468dce319e6ac94229917db21ac0bbf72cd237ba8d"

  url "https://github.com/brettferdosi/goftam/releases/download/v#{version}/goftam.app.zip"
  appcast "https://github.com/brettferdosi/goftam/releases.atom"
  name "goftam"
  desc "transliterating input method for macOS"
  homepage "https://github.com/brettferdosi/goftam/"

  input_method "goftam.app"

  zap trash: [
    "~/Library/Application Support/in.gutste.inputmethod.goftam"
  ]
end
