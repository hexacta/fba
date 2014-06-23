require 'spec_helper'

describe "Static pages" do
  before (:all) { set_locale }
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_selector('h1', text: heading) }
  end

  describe "Home page" do
    let(:page_title) { '' }
    let(:heading) { I18n.t(:heading) }
    
    before { visit root_path }

    it_should_behave_like "all static pages"

    it { should_not have_title('| Home') }

  end
end