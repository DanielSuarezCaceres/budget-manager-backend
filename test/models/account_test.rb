require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  test "should not create accounts without any information" do
    account = Account.new
    assert_not account.save, "Saved account without any info"
  end

  test "should not create account without name" do
    account = Account.new(description: "something")
    assert_not account.save, "Saved account without name"
  end

  test "should create account with valid data" do
    account = Account.new(name: "BBVA")
    assert account.save, "Saved account with valid data"
  end

  test "object is instance of Account class" do
    sample = Account.new
    assert_instance_of(Account, sample, "sample object is an instance of Account class")
  end

  test "object A is the same as object B" do
    account = Account.new
    account_copy = account
    assert_equal(account, account_copy, "Both refers to the same object")
  end

  test "object A is not the same as object B" do
    account = Account.new
    account_other = Account.new
    assert_not_equal(account, account_other, "Objects are different")
  end


end

