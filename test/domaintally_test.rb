require 'test_helper'

class DomaintallyTest < Test::Unit::TestCase

  def test_invalid_api_access_token
    assert_raise ArgumentError, "INVALID API KEY" do
      Dominatally.api_access_token = "xxx"
      Dominatally.domain("example.com")
    end
  end

  def test_missing_api_access_token
    assert_raise ArgumentError, "MISSING API KEY" do
      Dominatally.domain("example.com")
    end
  end

  def test_valid_api_access_token
    puts "DOMAINTALLY_ACCESS_TOKEN=<your_api_access_token> required to run this test" unless ENV["DOMAINTALLY_ACCESS_TOKEN"]

    assert_nothing_raised do
      Dominatally.api_access_token = ENV["DOMAINTALLY_ACCESS_TOKEN"]
      Dominatally.domain("example.com")
    end
  end

  def test_domaininfo_endpoint
    puts "DOMAINTALLY_ACCESS_TOKEN=<your_api_access_token> required to run this test" unless ENV["DOMAINTALLY_ACCESS_TOKEN"]

    Dominatally.api_access_token = ENV['DOMAINTALLY_ACCESS_TOKEN']
    response = bot.domain('example.com')

    assert_equal 200, response['meta']['code']
  end

  def test_rankinginfo_endpoint
    puts "DOMAINTALLY_ACCESS_TOKEN=<your_api_access_token> required to run this test" unless ENV["DOMAINTALLY_ACCESS_TOKEN"]

    Dominatally.api_access_token = ENV['DOMAINTALLY_ACCESS_TOKEN']
    response = Dominatally.domain('example.com')

    assert_equal 200, response['meta']['code']
  end

  def test_whoisinfo_endpoint
    puts "DOMAINTALLY_ACCESS_TOKEN=<your_api_access_token> required to run this test" unless ENV["DOMAINTALLY_ACCESS_TOKEN"]

    Dominatally.api_access_token = ENV['DOMAINTALLY_ACCESS_TOKEN']
    response = Dominatally.domain('example.com')

    assert_equal 200, response['meta']['code']
  end
end
