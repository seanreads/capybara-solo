describe "Google's home page" do
  it "should contain the word Gmail" do
    visit '/'
    expect(page).to have_content 'Gmail'
  end
end