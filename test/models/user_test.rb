require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Taotao", email: "taotao@taotao.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "  "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "  "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = 'a' * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = 'a' * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid address" do
    valid_addresses = %w[user@example.com USER@foo.com A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do | valid_address |
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} shoud be valid"
    end
  end

  test "email validation should reject invalid address" do
    valid_addresses = %w[user@example,com foo.com A_US-ER@foo.bar@org first.last@foo+jp alice@baz+bar.cn]
    valid_addresses.each do | valid_address |
      @user.email = valid_address
      assert_not @user.valid?, "#{valid_address.inspect} shoud be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblanck)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password shoud have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end

  test "associated microposts shoud be destroyed" do
    @user.save
    @user.microposts.create!(content: "Lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end

  test "should follow and unfollow a user" do
    michael = users(:michael)
    archer = users(:archer)
    assert_not michael.following?(archer)
    michael.follow(archer)
    assert michael.following?(archer)
    assert archer.followers.include?(michael)
    michael.unfollow(archer)
    assert_not michael.following?(archer)
  end

  test "feed should have the right posts" do
    michael = users(:michael)
    archer = users(:archer)
    lana = users(:lana)

    lana.microposts.each do |post|
      assert michael.feed.include?(post)
    end

    michael.microposts.each do |post|
      assert michael.feed.include?(post)
    end

    archer.microposts.each do |post|
      assert_not michael.feed.include?(post)
    end

  end
end
