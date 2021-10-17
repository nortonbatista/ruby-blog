require 'rails_helper'

RSpec.describe Article, :type => :model do
  context "Validate article's title" do
    it "is valid" do
      article = Article.new(title: "New Article", body: "New Article Body")

      expect(article).to be_valid
    end

    it "isn't valid" do
      article = Article.new(body: "New Article Body")

      expect(article).to_not be_valid
    end
  end

  context "Validate article's body" do
    it "is valid" do
      article = Article.new(title: "New Article", body: "New Article Body")

      expect(article).to be_valid
    end

    it "isn't valid" do
      article1 = Article.new(title: "New Article", body: "")
      article2 = Article.new(title: "New Article", body: "A") # Less than 10 characters

      expect(article1).to_not be_valid
      expect(article2).to_not be_valid
    end
  end
end