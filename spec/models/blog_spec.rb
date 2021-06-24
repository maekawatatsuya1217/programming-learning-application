require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end

  describe '新規投稿' do
    context '新規投稿ができる時' do
     it '正しい情報が入力された時は投稿できる' do
       expect(@blog).to be_valid
     end
    end
    context '新規投稿がうまくいかないとき' do
      it 'titleが空だと投稿できない' do
        @blog.title = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end
      it 'catchが体と投稿できない' do
        @blog.catch = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Catch can't be blank")
      end
      it 'articleが空だと登校できない' do
        @blog.article = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Article can't be blank")
      end
      it 'imageが空だと登校できない' do
        @blog.image = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
