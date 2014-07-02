include ApplicationHelper
 
def set_locale
  I18n.locale = I18n.default_locale
end

def fill_valid_user_information
  fill_in I18n.t('attributes.name'), with: "Example User"
  fill_in I18n.t('attributes.email'), with: "user@example.com"
  fill_in I18n.t('attributes.password'), with: "foobar"
  fill_in I18n.t('attributes.confirmation'), with: "foobar"
end

def fill_valid_signin(user)
  fill_in I18n.t('attributes.email'),    with: user.email
  fill_in I18n.t('attributes.password'), with: user.password
  click_button I18n.t(:signin)
end