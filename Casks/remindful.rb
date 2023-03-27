cask "remindful" do
  version "0.2"
  sha256 "3b3aecb424cd9fb7803796161b6f80d131ae453c9018094f54175e15deae60a3"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  appcast "https://github.com/brettferdosi/remindful/releases.atom"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"

  app "remindful.app"
end
