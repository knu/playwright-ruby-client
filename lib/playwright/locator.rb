# :markup: markdown

module Playwright
  class Locator < PlaywrightApi
    #
    # Waits until a given number (`count`, defaulted to 1) of elements specified by locator satisfies the `state` option and returns self.
    #
    # If target element already satisfies the condition, the method returns immediately. Otherwise, waits for up to
    # `timeout` milliseconds until the condition is met.
    #
    # **Usage**
    #
    # ```ruby
    # page.locator("button#search").click
    #
    # page.locator("ul#item_list li").wait.all.each do |item|
    #   # ...
    # end
    # ```
    #
    def wait(count: 1, state: nil, timeout: nil)
      nth(count - 1).wait_for(state: state, timeout: timeout)
      self
    end
  end
end
