require 'spec_helper'

describe Ticket do
  it{should belong_to :category}
  it{should validate_presence_of :category }
  it{should have_many(:actions).dependent(:destroy)}
end
