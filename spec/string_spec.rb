require 'string'
RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string_wrapper = StringWrapper.new("hello")
        reversed_string = string_wrapper.reverse
        expect(reversed_string).to eq("olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string_wrapper = StringWrapper.new("hello")
        upcase_string = string_wrapper.upcase
        expect(upcase_string).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string_wrapper = StringWrapper.new("HELLO")
        downcase_string = string_wrapper.downcase
        expect(downcase_string).to eq("hello")
      end
    end
  end
  