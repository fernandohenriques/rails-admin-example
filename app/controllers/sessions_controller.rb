class SessionsController < Devise::SessionsController
  before_action :remove_unauthenticated_flash_message

  private

    def remove_unauthenticated_flash_message
      if flash[:alert] == I18n.t('devise.failure.unauthenticated')
        flash[:alert] = nil
      end
    end

end
