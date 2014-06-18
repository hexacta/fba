require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    let(:heading) { 'Fundacion Banco de Alimentos' }
    let(:page_title) { '' }
    
    before { visit root_path }

    it_should_behave_like "all static pages"

    it { should_not have_title('| Home') }

  end
end