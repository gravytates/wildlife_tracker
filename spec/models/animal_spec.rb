require 'rails_helper'

describe Animal do
  it { should validate_presence_of :species }
  it { should validate_presence_of :date }
  it { should validate_presence_of :region }
end
