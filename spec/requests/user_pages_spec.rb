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

    it { should_not have_content(user.name) }
    it { should_not have_title(user.name) }
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
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

  describe "edit" do
    let(:submit) { I18n.t(:save_changes) }
    let(:user) { FactoryGirl.create(:user) }
    before do 
      sign_in user
      visit edit_user_path(user)
    end

    describe "page" do
      it { should have_content(I18n.t(:edit_user_heading)) }
      it { should have_title(I18n.t(:edit_user_title)) }
      it { should have_link(I18n.t(:change), href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
      before { click_button submit }

      it { should have_content('error') }
    end

    describe "with valid information" do
      let(:new_name)  { "New Name" }
      let(:new_email) { "new@example.com" }
      before do
        fill_in I18n.t('attributes.name'), with: new_name
        fill_in I18n.t('attributes.email'), with: new_email
        fill_in I18n.t('attributes.password'), with: user.password
        fill_in I18n.t('attributes.confirmation'), with: user.password
        click_button submit
      end

      it { should have_title(new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link(I18n.t(:signout), href: signout_path) }
      specify { expect(user.reload.name).to  eq new_name }
      specify { expect(user.reload.email).to eq new_email }
    end
  end

  describe "index" do
    describe "as an admin user" do
      let(:admin) { FactoryGirl.create(:admin) }
      before do
        sign_in admin
        visit users_path
      end

      it { should have_title(I18n.t(:users_title)) }
      it { should have_content(I18n.t(:users_heading)) }

      describe "pagination" do

        before(:all) { 30.times { FactoryGirl.create(:user) } }
        after(:all) { User.delete_all }

        it { should have_selector('div.pagination') }

        it "should list each user" do
          User.paginate(page: 1).each do |user|
            expect(page).to have_selector('li', text: user.name)
          end
        end
      end

      describe "delete links" do
        before do
          3.times { FactoryGirl.create(:user) }
          FactoryGirl.create(:admin)
          sign_in admin
          visit users_path
       end

        it "should be able to delete another user" do
          expect do
            click_link(I18n.t(:delete), match: :first)
          end.to change(User, :count).by(-1)
        end

        describe "submitting a DELETE request to the Users#destroy action" do
          before do
            sign_in admin, no_capybara: true
            delete user_path(admin)
          end

          specify { expect(response).to redirect_to(users_url) }
        end
      end
    end
  end
end