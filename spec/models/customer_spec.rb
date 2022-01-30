# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Customerモデルのテスト', type::model do
  describe 'バリデーションのテスト' do
    subject { customer.valid? }
    
    let!(:other_customer) { create(:customer) }
    let(:customer) { build(:customer) }
    
    context 'nameカラム' do
      it '空欄でないこと' do
        customer.name = ''
        is_expected.to eq false
      end 
      
  end  
end