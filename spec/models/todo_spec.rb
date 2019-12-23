require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  # TodoモデルがItemモデルと1:mの関係があるかテスト
  it { should have_many(:items).dependent(:destroy) } 

  # Validation test
  # 保存する前にtitleとcreated_byが存在するかテスト
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
