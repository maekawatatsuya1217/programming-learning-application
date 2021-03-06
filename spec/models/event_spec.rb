require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end
  
  describe 'イベント追加' do
    context 'イベント追加ができる時' do
     it '正しい情報が入力された時は追加できる' do
       expect(@event).to be_valid
     end
    end
    context 'イベント追加がうまくいかないとき' do
      it 'titleが空では追加できない' do
        @event.title = ''
        @event.valid?
        expect(@event.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'contentが空では追加できない' do
        @event.content = ''
        @event.valid?
        expect(@event.errors.full_messages).to include('内容を入力してください')
      end
      it 'start_timeが空では追加できない' do
        @event.start_time = ''
        @event.valid?
        expect(@event.errors.full_messages).to include('日時を入力してください')
      end
    end
  end
end
