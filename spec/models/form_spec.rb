require 'rails_helper'

RSpec.describe Form, type: :model do
  before do
    @form = FactoryBot.build(:form)
  end

  describe 'フォーム投稿' do
    context 'フォーム投稿ができる時' do
     it '正しい情報が入力された時は投稿できる' do
       expect(@form).to be_valid
     end
    end
    context 'フォーム投稿がうまくいかないとき' do
      it 'dayが空だと投稿できない' do
        @form.day = ''
        @form.valid?
        expect(@form.errors.full_messages).to include('学習日を入力してください')
      end
      it 'timeが空だと投稿できない' do
        @form.time = ''
        @form.valid?
        expect(@form.errors.full_messages).to include('学習時間を入力してください')
      end
      it 'goodが空だと投稿できない' do
        @form.good = ''
        @form.valid?
        expect(@form.errors.full_messages).to include('良かったところを入力してください')
      end
      it 'badが空だと投稿できない' do
        @form.bad = ''
        @form.valid?
        expect(@form.errors.full_messages).to include('上手くいかなかった点を入力してください')
      end
      it 'improvementが空だと投稿できない' do
        @form.improvement = ''
        @form.valid?
        expect(@form.errors.full_messages).to include('明日からの改善案を入力してください')
      end
      it 'imageが空だと投稿できない' do
        @form.image = nil
        @form.valid?
        expect(@form.errors.full_messages).to include('画像を入力してください')
      end
    end
  end
end
