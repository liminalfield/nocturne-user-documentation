module Jekyll
  Jekyll::Hooks.register :pages, :post_render do |page|
    next unless page.output_ext == ".html"
    next unless page.output

    # Add target="_blank" and rel="noopener" to external links
    page.output = page.output.gsub(/<a\s+(href=["']https?:\/\/[^"']+["'])/) do |match|
      if match.include?('target=')
        match
      else
        "<a #{Regexp.last_match(1)} target=\"_blank\" rel=\"noopener\""
      end
    end
  end
end
