require 'spec_helper'

describe KgPhoneNumber do
  it 'has a version number' do
    expect(KgPhoneNumber::VERSION).not_to be nil
  end

  %w[
    +996555123444
    996555123444
    00996555123444
    0555123444
    555123444
    ].each do |phone_number|
      context "when format is like '#{phone_number}'" do
        let(:phone_number) { phone_number }
        it "return phone number in unified format" do
          actual_value = KgPhoneNumber::detect(phone_number)
          expect(actual_value).to eq("+996555123444")
        end
      end
  end
end
