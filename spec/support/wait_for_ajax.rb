# frozen_string_literal: true

# Dead code?
# module WaitForAjax
#   def wait_for_ajax
#     Timeout.timeout(Capybara.default_max_wait_time) do
#       loop until finished_all_ajax_requests?
#     end
#   end
#
#   def finished_all_ajax_requests?
#     page.evaluate_script('jQuery.active').zero?
#   end
# end
#
# RSpec.configure do |config|
#   config.include WaitForAjax, type: :feature
# end
