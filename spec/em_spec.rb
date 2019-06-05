#spec/em_spec.rb
require '../lib/enumerable-methods'  #=> add this



RSpec.describe Enumerable do
    describe "#my_each" do
      it "returns the array" do
        expect([0,1,2].my_each{|n| n}).to eql([0,1,2])
      end
    end

  


    describe "#my_select" do
      it "returns the selected elements" do
        expect([0,1,2,10,100].my_select{|n| n % 2 == 0}).to eql([0,2,10,100])
      end
    end



    describe "#my_all" do
      it "returns false if no every element fills the condition" do
        expect([0,0,0,0,2].my_all?{|n| n == 0}).to eql(false)
      end
    end




    describe "#my_each_with_index" do
      it "returns every array element with it's index" do
          expect([9,150,6].my_each_with_index {|element, index| [element,index]}).to eql([[9,0],[150,1],[6,2]]) 
      end
  end 



    describe "#my_any?" do
      it "returns true if any element of array satisfies condition" do
        expect([0,500,2].my_any? {|e| e % 2 == 0}).to eql(true) 
      end
    end 



  
  describe"#my_count" do
    let(:test_array) { [9,2,4] }
     it "counts total array elements" do
    expect(test_array.my_count{|item| item +=1 }).to eql(3) 
    end
     it "counts number of elements that meet some condition" do
    expect(test_array.my_count{|item| item +=1 if item >5}).to eql(1) 
    end
  end 

end 

