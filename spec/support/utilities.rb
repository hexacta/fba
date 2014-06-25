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

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-success', text: message)
  end
end