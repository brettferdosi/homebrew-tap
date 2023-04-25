cask "remindful" do
  version "0.4"
  sha256 "899fe64d9c4fe6483641136ed976f59e15220f3ac2b9283d2c1283decadd90e9"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  appcast "https://github.com/brettferdosi/remindful/releases.atom"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"

  app "remindful.app"
end
