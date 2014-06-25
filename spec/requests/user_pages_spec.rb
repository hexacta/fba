require 'spec_helper'

describe "User pages" do
  before (:all) { set_locale }
  subject { page }

  describe "new user page" do
    let(:page_title) { I18n.t(:new_user_title) }
    let(:heading) { I18n.t(:new_user_heading) }

    before { visit new_user_path }

    it { should have_title(full_title(page_title)) }
    it { should have_content(heading) }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "create user" do
    let(:submit) { I18n.t(:create_user) }
    before { visit new_user_path }

    describe "with invalid information" do

      describe "after submission" do
        before { click_button submit }

        it { should have_title(I18n.t(:new_user_title)) }
        it { should have_content('error') }
      end

      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before { fill_valid_user_information }

      describe "after saving the user" do
        let(:user) { User.find_by(email: 'user@example.com') }
        before { click_button submit }

        it { should have_title(user.name) }
        it { should have_success_message(I18n.t(:welcome)) }
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end