# @announce-output
Feature:
  I would like Factory Girl Sequences gem to automatically register sequences

  Background:
    Given I successfully run `bundle exec rails new testapp --skip-bundle --skip-sprockets --skip-javascript`
    And I cd to "testapp"
    And I add "factory_girl_rails" as a dependency
    And I add "factory_girl_sequences" from this project as a dependency

  Scenario: Using Factory Girl Sequences registers predefined sequences
    And I run `bundle install`
    And I run `bundle exec rails generate model User name`
    And I run `bundle exec rake db:migrate`
    When I write to "test/unit/user_test.rb" with:
      """
      require 'test_helper'

      class UserTest < ActiveSupport::TestCase
        test "factory_girl should know name sequence" do
          user = FactoryGirl.create(:user)
          assert user.name
        end
      end
      """
    And I run `bundle exec rake test`
    Then the output should contain "1 runs, 1 assertions, 0 failures, 0 errors, 0 skips"
