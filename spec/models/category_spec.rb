require 'spec_helper'

describe Category do
  it{should validate_presence_of :name}
  it{should belong_to :board}
  it{should have_many(:tickets).dependent(:destroy)}
end
