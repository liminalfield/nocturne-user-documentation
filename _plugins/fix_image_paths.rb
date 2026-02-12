module Jekyll
  module ImagePathFilter
    # Rewrite relative image paths from pages/ content so they resolve
    # correctly in the built site. Nocturne Writer generates paths like
    # "pages/Images/foo.png" relative to the file location, but Jekyll
    # serves pages at different URL depths after build.
    #
    # This hook rewrites src="pages/Images/..." and src="Images/..."
    # to use absolute paths from the site root: "/pages/Images/..."

    Jekyll::Hooks.register :pages, :post_render do |page|
      next unless page.output_ext == ".html"
      next unless page.output

      # Match src attributes pointing to pages/Images/ or Images/ (relative)
      page.output = page.output.gsub(
        /src=["']((?:\.\.\/)*(?:pages\/)?Images\/[^"']+)["']/i
      ) do |match|
        path = Regexp.last_match(1)
        # Normalize to /pages/Images/...
        normalized = path.sub(/^(\.\.\/)*(?:pages\/)?Images\//, '/pages/Images/')
        "src=\"#{normalized}\""
      end
    end
  end
end
