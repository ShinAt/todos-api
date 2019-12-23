require 'rails_helper'

RSpec.describe Item, type: :model do
  # Association Test
  # item recordは単一のtodo recordに属しているかテスト
  it { should belong_to(:todo) } 

  # Validation test
  # 保存する前にnameが存在するかテスト
  it { should validate_presence_of(:name) }
end
