require "spec_helper.rb"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end

  context "#any_empty?" do
    it "returns true if one element of the array is empty" do
      expect(["", :one, "banana"].any_empty?).to be_truthy
    end

    it "returns true for an Array with a single empty value" do
      expect([""].any_empty?).to be_truthy
    end

    it "returns false for an Array with no empty values" do
      expect(["X", "X", "X"].any_empty?).to be_falsey
    end
  end

  context "#none_empty?" do
    it "returns true for a full Array" do
      expect(["X", "X", "X"].none_empty?).to be_truthy
    end

    it "returns false for an Array with an empty value" do
      expect(["", "X", 1].none_empty?).to be_falsey
    end

    it "returns false for an empty Array" do
      expect([""].none_empty?).to be_falsey
    end
  end
end