require 'spec_helper'

feature 'Something' do
	scenario 'does stuff' do
		puts 5.should eq(5)
		expect(5).to be(5)
	end

	scenario 'does other stuff' do
	end


	describe Array do
		it { should be_empty }

		it "is empty" do 
			subject.should be_empty
		end
	end

	describe "Equal Test" do
		it 'passes when match' do
			expect(5).to be_equal(5)
		end
	end
end