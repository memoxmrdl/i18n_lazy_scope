require "rails"
require "i18n_lazy_scope/helper"

module I18nLazyScope
  class Railtie < Rails::Railtie
    initializer "i18n_lazy_scope.helpers" do
      ActiveSupport.on_load(:action_view) do
        include I18nLazyScope::Helper
      end

      ActiveSupport.on_load(:action_controller) do
        include I18nLazyScope::Helper
      end

      ActiveSupport.on_load(:action_mailer) do
        include I18nLazyScope::Helper
      end
    end
  end
end
