# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Customerモデルのテスト', type::model do
  describe 'バリデーションのテスト' do
    subject { customer.valid? }
  end  
end