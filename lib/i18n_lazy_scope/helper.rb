module I18nLazyScope
  module Helper
    def t_scoped(key, **args)
      t(key, scope: lazy_scope, **args)
    end
    alias_method :ts, :t_scoped
  end
end
