require 'rails_helper'

RSpec.describe User, type: :model do
  it "encrypts ssn" do
    user = User.create!(ssn: "123")
    expect(user.encrypted_ssn).not_to eq('123')
  end
  it "decrypts ssn" do
    user = User.create!(ssn: "123")
    expect(user.ssn).to eq('123')
  end
  it "uniquely encryptes ssn" do
    user1 = User.create!(ssn: "123")
    user2 = User.create!(ssn: "123")
    expect(user1.encrypted_ssn).not_to eq(user2.encrypted_ssn)
  end
  it "uniquely re-encrypts ssn" do
    user1 = User.create!(ssn: "123")
    ssn1 = user1.encrypted_ssn
    user1.ssn = "123"
    ssn2 = user1.encrypted_ssn
    expect(ssn1).not_to eq(ssn2)
  end
end
