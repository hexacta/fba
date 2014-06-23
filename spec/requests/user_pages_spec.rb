require 'spec_helper'

describe "User pages" do
  before (:all) { set_locale }
  subject { page }

  describe "signup page" do
    let(:page_title) { I18n.t(:new_user_title) }
    let(:heading) { I18n.t(:new_user_heading) }

    before { visit new_user_path }

    it { should have_title(full_title(page_title)) }
    it { should have_content(heading) }
  end
end