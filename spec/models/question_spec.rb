# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Question モデルのテスト', type: :model do
  it "有効な問題の場合は保存されるか" do
    expect(FactoryBot.build(:question)).to be_valid
  end
  it "有効な選択肢１の場合は保存されるか" do
    expect(FactoryBot.build(:choice_1)).to be_valid
  end
  it "有効な選択肢２の場合は保存されるか" do
    expect(FactoryBot.build(:choice_2)).to be_valid
  end
  it "有効な答えの選択肢の場合は保存されるか" do
    expect(FactoryBot.build(:choice_answer)).to be valid
  end  
  
end