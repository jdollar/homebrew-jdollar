cask 'postman6' do
  version '6'
  sha256 '8ede79c2697eca3fd3b8fbed13881fd9d6633559a78da044a7ddd4833fd9831e'

  url "https://go.pstmn.io/dl-macos64-v#{version}-latest"
  appcast "https://dl.pstmn.io/update/status?channel=stable&currentVersion=#{version}.0.0&arch=64&platform=osx&syncEnabled=true&teamPlan="
  name 'Postman'
  homepage 'https://www.getpostman.com/'

  auto_updates true

  app 'Postman.app'

  zap trash: [
               '~/Library/Application Support/Postman',
               '~/Library/Application Support/com.postmanlabs.mac.ShipIt',
               '~/Library/Caches/Postman',
               '~/Library/Caches/com.postmanlabs.mac',
               '~/Library/Preferences/com.postmanlabs.mac.plist',
               '~/Library/Saved Application State/com.postmanlabs.mac.savedState',
             ]
end

