require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
     it '正しい情報が入力された時は登録できる' do
       expect(@user).to be_valid
     end
    end
    context '新規登録がうまくいかないとき' do
     it 'nameが空だと登録できない' do
       @user.name = ''
       @user.valid?
       expect(@user.errors.full_messages).to include('名前を入力してください')
     end
     it 'emailが空だと登録できない' do
       @user.email = ''
       @user.valid?
       expect(@user.errors.full_messages).to include('Eメールを入力してください')
     end
     it '重複したemailが存在する場合登録できない' do
       @user.save
       another_user = FactoryBot.build(:user)
       another_user.email = @user.email
       another_user.valid?
       expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
     end
     it 'メールアドレスは、@を含む必要があること' do
      @user.email = 'aa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Eメールは不正な値です')
     end
     it 'passwordが空だと登録できない' do
       @user.password = ''
       @user.valid?
       expect(@user.errors.full_messages).to include("パスワードを入力してください", "パスワードには英字と数字の両方を含めて設定してください")
     end
     it 'passwordが5文字以下であれば登録できない' do
       @user.password = '00000'
       @user.password_confirmation = '00000'
       @user.valid?
       expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
     end
     it 'passwordが存在してもpassword_confirmationが空だと登録できない' do
       @user.password_confirmation = ''
       @user.valid?
       expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')   
     end
     it 'パスワードは、半角英数字混合での入力が必須であること' do
        @user.password = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードには英字と数字の両方を含めて設定してください')
      end
      it 'passwordは数字のみでは登録できないこと' do
        @user.password = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードには英字と数字の両方を含めて設定してください')
      end
      it 'passwordは全角では登録できない' do
        @user.password = 'ccc１１１'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'profileが空では登録できない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('プロフィールを入力してください')
      end
    end
  end


    describe 'ユーザー情報編集' do
      context 'ユーザー情報が編集できるとき' do
       it '正しい情報が入力された時は編集できる' do
         expect(@user).to be_valid
       end
      end
      context 'ユーザー情報の編集がうまくいかないとき' do
       it 'nameが空だと編集できない' do
         @user.name = ''
         @user.valid?
         expect(@user.errors.full_messages).to include('名前を入力してください')
       end
       it 'emailが空では編集できない' do
          @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('Eメールを入力してください')
       end
       it '重複したemailが存在する場合登録できない' do
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
        end
        it 'メールアドレスは、@を含む必要があること' do
          @user.email = 'aa'
          @user.valid?
          expect(@user.errors.full_messages).to include('Eメールは不正な値です')
        end
        it 'profileが空では編集できない' do
          @user.profile = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('プロフィールを入力してください')
        end
      end
    end
end