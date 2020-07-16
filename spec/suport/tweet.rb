class Vyew
  include Capybara::DSL

  def visit_page(path)
    visit(path)
    self
  end

  def tweet(content)
    fill_in 'tweet[content]', with: content
    click_on('Create Tweet')
    self
  end
end
