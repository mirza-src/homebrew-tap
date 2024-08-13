# ryujinx.rb
# Inspired by: https://github.com/Somiona/homebrew-somio-test/blob/add_ryujinx/Casks/ryujinx.rb
cask "ryujinx" do
    version "1.1.1375"
    sha256 "541e7572e96bd488780e7f670f678f44d542c44eb64ec63edec74b465d7233df"
  
    url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz",
        verified: "github.com/Ryujinx/release-channel-master/"
    name "Ryujinx"
    desc "Experimental Nintendo Switch Emulator written in C#"
    homepage "https://ryujinx.org/"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    auto_updates true
    depends_on macos: ">= :big_sur"
  
    app "Ryujinx.app"
  
    zap trash: [
      "~/.config/Ryujinx",
      "~/Library/Application Support/CrashReporter/Ryujinx_*.plist",
      "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
      "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
    ]
end