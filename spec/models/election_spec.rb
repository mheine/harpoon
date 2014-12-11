require 'rails_helper'

RSpec.describe Election, :type => :model do
  context "validations" do
    subject { Election.new }

    required_attributes = %w[name description occurs_on published_on]
    required_attributes.each do |attr|
      it "requires a value for #{attr}" do
        expect(subject).to be_invalid
        expect(subject.errors).not_to be_empty
        expect(subject.errors.keys).to include(attr.to_sym)
      end
    end
  end
end
