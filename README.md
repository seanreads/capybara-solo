# capybara-solo
Bootstrap project to run standalone Capybara against a remote application. Current version uses RSpec for tests along with Selenium plus Chrome for browser automation.

## Installation

```sh
$ brew install chromedriver
$ cd capybara-solo
$ bundle install
```

## Configuration

```sh
# Create and edit your .env file
$ cp .env.example .env
```

## Usage

1) Create a test in the features directory (e.g., spec/features/google_index_spec.rb).

```ruby
describe "Google's home page" do
  it %Q$should contain the "I'm Feeling Lucky Button"$ do
    visit '/'
    expect(page).to have_button(value: "I'm Feeling Lucky")
  end
end
```

2) Run it:

```sh
$ rspec spec/features/google_index_spec.rb --format documentation

Google's home page
  should contain the "I'm Feeling Lucky Button"

Finished in 1.29 seconds (files took 0.73299 seconds to load)
1 example, 0 failures
```

## Resources

* http://teamcapybara.github.io/capybara/
* http://rspec.info/
* http://www.seleniumhq.org/
* https://developers.google.com/web/updates/2017/04/headless-chrome
