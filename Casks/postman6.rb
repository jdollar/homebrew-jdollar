cask 'postman6' do
  version '6'
  sha256 'ef5f023d9970acc1338105ab134a55b52a14d06608521c104a9938e97cddc09b'

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

