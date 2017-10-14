# capybara-solo
Bootstrap project to run standalone Capybara against a remote application. Current version uses RSpec for tests along with Selenium plus Chrome for browser automation.

## Installation

```
$ brew install chromedriver
$ cd capybara-solo
$ bundle install
```

## Configuration

```
# Create and edit your .env file
$ cp .env.example .env
```

## Usage

1) Create a test in the features directory (e.g., spec/features/google_index_spec.rb).

```
describe "Google's home page" do
  it %Q$should contain the "I'm Feeling Lucky Button"$ do
    visit '/'
    expect(page).to have_button(value: "I'm Feeling Lucky")
  end
end
```

2) Run it:

```
$ rspec spec/features/google_index_spec.rb
```

