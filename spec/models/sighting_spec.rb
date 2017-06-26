require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :description }
  it { should validate_presence_of :lat }
  it { should validate_presence_of :long }
  it { should validate_presence_of :region }

  it { should belong_to :animal }
end
