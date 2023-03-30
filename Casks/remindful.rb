cask "remindful" do
  version "0.3"
  sha256 "5440d630ad793ab99f44bdcae7a8e0af46bfd876d38b5f8cd76f181926c6c053"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  appcast "https://github.com/brettferdosi/remindful/releases.atom"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"

  app "remindful.app"
end
