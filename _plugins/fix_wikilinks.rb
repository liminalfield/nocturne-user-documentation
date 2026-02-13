module Jekyll
  Jekyll::Hooks.register :pages, :post_render do |page|
    next unless page.output_ext == ".html"
    next unless page.output

    # Convert [[path/to/page|Display Text]] to <a href="/path/to/page.html">Display Text</a>
    # Also handles [[path/to/page]] without display text
    page.output = page.output.gsub(/\[\[([^\]|]+?)(?:\|([^\]]+?))?\]\]/) do
      path = Regexp.last_match(1).strip
      label = (Regexp.last_match(2) || File.basename(path).gsub('-', ' ')).strip

      # Ensure path starts with / and ends with .html
      href = path.start_with?('/') ? path : "/#{path}"
      href = "#{href}.html" unless href.end_with?('.html')

      "<a href=\"#{href}\">#{label}</a>"
    end
  end
end
