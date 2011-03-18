require 'spec_helper'

describe Action do
  it{should belong_to(:user)}
  it{should belong_to(:ticket)}
end
