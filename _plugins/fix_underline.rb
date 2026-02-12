module Jekyll
  Jekyll::Hooks.register :pages, :post_render do |page|
    next unless page.output_ext == ".html"
    next unless page.output

    # Convert ++text++ to <u>text</u>
    page.output = page.output.gsub(/\+\+([^+]+)\+\+/, '<u>\1</u>')
  end
end
