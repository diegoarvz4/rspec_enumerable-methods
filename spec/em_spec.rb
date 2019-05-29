#spec/em_spec.rb
require './lib/enumerable-methods'  #=> add this

RSpec.describe Enumerable do
    describe "#my_each" do
      it "returns the array" do
        expect([0,1,2].my_each{|n| n}).to eql([0,1,2])
      end
    end
end
  

RSpec.describe Enumerable do
    describe "#my_select" do
      it "returns the selected elements" do
        expect([0,1,2,10,100].my_select{|n| n % 2 == 0}).to eql([0,2,10,100])
      end
    end
end

RSpec.describe Enumerable do
    describe "#my_all" do
      it "returns false if no every element fills the condition" do
        expect([0,0,0,0,2].my_all?{|n| n == 0}).to eql(false)
      end
    end
end


=begin 

=end 