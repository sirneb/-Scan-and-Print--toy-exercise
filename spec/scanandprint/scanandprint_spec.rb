require 'spec_helper'

describe ScanAndPrint do
  let(:object) { ScanAndPrint.new(:input_string => "58 24 44 66", 
                                  :input_hash => { '24' => 'Birthday', 
                                                   '58' => 'Happy', 
                                                   '66' => 'You', 
                                                   '44' => 'to' }) }


  describe "accessors" do
    it "should have accessors for input_string" do
      new_input = "dummy"
      object.input_string = new_input
      object.input_string.should == new_input
    end

    it "should have accessors for input_string" do
      new_input = Hash.new
      object.input_hash = new_input
      object.input_hash.should == new_input
    end
  end

  describe "#print" do
    it "should be output 'Happy Birthday to You'" do
      object.print.should == 'Happy Birthday to You'

    end

    it "should work on weird cases also" do
      # pending
      case1 = "58 24 44 66 66" # 'Happy Birthday to You You'
      case2 = "58 58 58 58" # 'Happy Happy Happy Happy'

      object.input_string = case1
      object.print.should == 'Happy Birthday to You You'

      object.input_string = case2
      object.print.should == 'Happy Happy Happy Happy'
    end
  end
end
