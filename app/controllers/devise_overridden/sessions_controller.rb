# frozen_string_literal: true

module DeviseOverridden
  class SessionsController < ::Devise::SessionsController
    after_action :prepare_intercom_shutdown, only: [:destroy]

    protected

    def prepare_intercom_shutdown
      IntercomRails::ShutdownHelper.prepare_intercom_shutdown(session)
    end
  end
end
