cask "notepadx" do
  version "1.3.2"

  on_intel do
    url "https://github.com/szabadkai/NotepadX/releases/download/v#{version}/NotepadX-macos-x86_64.zip"
    sha256 "cc68121dad8a8752fbc40235b2a764e5309e520c9c5f2a56c387b57712ff14e8"
  end

  on_arm do
    url "https://github.com/szabadkai/NotepadX/releases/download/v#{version}/NotepadX-macos-arm64.zip"
    sha256 "fce39dda59dbd3aea2108af686327a56b4714e2240d90b35337399ef47fdf21a"
  end

  name "NotepadX"
  desc "Fast, beautiful, cross-platform text editor"
  homepage "https://github.com/szabadkai/NotepadX"

  depends_on macos: ">= :big_sur"

  app "NotepadX.app"

  zap trash: [
    "~/Library/Preferences/com.notepadx.app.plist",
    "~/Library/Application Support/NotepadX",
  ]
end
