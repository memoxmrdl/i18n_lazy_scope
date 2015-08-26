module I18nLazyScope::ActionView
  module Helper
    def lazy_scope
      [*I18nLazyScope.configuration.action_view_scope]
    end
  end
end
