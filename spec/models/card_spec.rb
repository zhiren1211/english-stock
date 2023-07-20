require "rails_helper"

RSpec.describe Card, type: :model do
  describe "FactoryBotによるカード作成のテスト" do
    it "FactoryBotでカードを作成できる" do
      card = build(:card)
      expect(card).to be_valid
    end
  end

  describe "カードのバリデーションのテスト" do
    it "カード名の値が空だとカードを作成できないこと" do
      card = build(:card, name: "")
      expect(card).to be_invalid
    end

    it "カード名の値の長さが30字以下だとカードを作成できること" do
      card = build(:card, name: "a" * 30)
      expect(card).to be_valid
    end

    it "カード名の値の長さが31字以上だとカードを作成できないこと" do
      long_name_card = build(:card, name: "a" * 31)
      expect(long_name_card).to be_invalid
    end

    it "備考コメントの長さが255字以下だとカードを作成できること" do
      card = build(:card, comment: "a" * 255)
      expect(card).to be_valid
    end

    it "備考コメントの長さが256字以上だとカードを作成できないこと" do
      long_comment_card = build(:card, comment: "a" * 256)
      expect(long_comment_card).to be_invalid
    end

    it "備考コメントの値は空でもカードを作成できること" do
      no_comment_card = build(:card, comment: "")
      expect(no_comment_card).to be_valid
    end
  end
end
