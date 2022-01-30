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
      
    context 'emailカラム'  
      it '空欄でないこと' do
        customer.email = ''
        is_expected.to eq false
      end
      
    context 'encrypted_passwordカラム'
      it '空欄でないこと' do
        customer.encrypted_password = ''
        is_expected.to eq false
      it '６文字以上であること: 5文字は×︎'  
        customer.encrypted_password = Faker::Lorem.characters(number: 5)
        is_expected.to eq false
      end
      it '6文字以上であること: 6文字は⚪︎'
        customer.encrypted_password = Faker::Lorem.characters(number: 6)
        is_expected.to eq true
      end
      
    describe 'アソシエーションのテスト' do
      context 'Favoriteモデルとの関係' do
        it '1:Nとなっている' do
          expect(Favorite.reflect_on_association(:books).macro).to eq :has_many
        end
      end
    end  
  end   
end