require 'spec_helper'

describe NomesTugas do
	describe "#identify_gender" do
		it "should return female when recives a female name" do
			NomesTugas.identify_gender("Catarina").should eql("female")
		end
		it "should return male when recives a male name" do
			NomesTugas.identify_gender("Bernardo").should eql("male")
		end
		it "should return not_sure when receives an unknown name" do
			NomesTugas.identify_gender("badjoras").should eql("not_sure")
		end
	end
end