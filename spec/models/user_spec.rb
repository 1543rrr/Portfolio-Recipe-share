require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    before do
      @user = FactoryBot.build(:user)
    end
    it "nameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
      expect(@user).to be_valid
    end
    it " ニックネームが必須であること" do
      @user.nickname = ""
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include ""
    end    
    it "メールアドレスが必須であること" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include ""
    end
    it "メールアドレスが一意性であること" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("")
    end
    it "メールアドレスは、@を含む必要があること" do
      @user.email = "fjghjbljftyu"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "パスワードが必須であること" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "パスワードは、6文字以上での入力が必須であること" do
      @user.password = "1111111"
      @user.valid?
      expect(@user.errors.full_messages).to include()
    end
    it "パスワードは、半角英数字混合での入力が必須であること" do
      @user.password = "AAA"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "パスワードは、確認用を含めて2回入力が必須であること" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "パスワードとパスワード（確認用）、値の一致が必須であること" do
      @user.password_confirmation = "uuiudgud"
      @user.valid?
      expect(@user.errors[:password_confirmation]).to include("")
    end
    it "first_nameが必須であること" do
       @user.first_name = ""
       @user.valid?
       expect(@user.errors.full_messages).to include("")
    end
    it "last_nameが必須であること" do
       @user.last_name = ""
       @user.valid?
       expect(@user.errors.full_messages).to include("")
    end
    it "passwordは数字のみでは登録できないこと" do
      @user.password = "1111111"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "passwordは全角では登録できないこと" do
      @user.password = "ABC"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "first_nameは漢字・平仮名・カタカナ以外では登録できないこと" do
      @user.first_name = "test123"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "last_nameは漢字・平仮名・カタカナ以外では登録できないこと" do
      @user.last_name = "test123"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "first_name_kanaは全角カタカナ以外では登録できないこと" do
      @user.first_name_kana = "test1234"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
    it "last_name_kanaは全角カタカナ以外では登録できないこと" do
      @user.last_name_kana = "test1234"
      @user.valid?
      expect(@user.errors.full_messages).to include("")
    end
  end
end
