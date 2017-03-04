module ApplicationHelper
  def t_options(key)
    I18n.t(key, scope: 'select_options', default: '')
  end

  def t_a(key)
    I18n.t(key, scope: 'activerecord.attributes', default: '')
  end

  def t_option_str(key, code)
    t_options("#{key}.#{code}").empty? ? code : t_options("#{key}.#{code}")
  end
end
