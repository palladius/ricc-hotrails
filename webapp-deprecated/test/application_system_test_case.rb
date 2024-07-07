require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  # if you want it invisible instead:
  #driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

end
