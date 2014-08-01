require 'spec_helper'

describe "Role pages" do
  before (:all) { set_locale }
  subject { page }

  describe "index" do
    let(:page_title) { I18n.t(:roles_title) }
    let(:heading) { I18n.t(:roles_heading) }

    before { visit roles_path }

    it { should have_title(full_title(page_title)) }
    it { should have_content(heading) }
  end

  describe "add role" do
    let(:user) { FactoryGirl.create(:user) }
    let(:page_title) { I18n.t(:edit_user_role_title) }
    let(:heading) { I18n.t(:edit_user_role_heading) }
    
    before { visit edit_role_path(user) }

    it { should have_title(full_title(page_title)) }
    it { should have_content(heading) }
    it { should have_button(I18n.t(:save_roles)) }
  end

 
end