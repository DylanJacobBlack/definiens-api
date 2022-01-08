require "test_helper"

class LanguageTest < ActiveSupport::TestCase
  test "language name should be unique" do
    assert_raises(Exception) do
      Language.create(name: "english")
      Language.create(name: "english")
    end
  end
end
