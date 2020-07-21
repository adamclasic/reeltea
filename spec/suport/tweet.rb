class Vyew
  include Capybara::DSL

  def visit_page(path)
    visit(path)
    self
  end

  def tweet(content)
    fill_in 'tweet[content]', with: content
    find('#register-button').click
    self
  end
end
