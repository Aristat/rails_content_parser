module Parsing
  module Tags
    class H3 < Base
      def parse
        tags = @nokogiri.search('h3').map { |n| n.text }
        tags.each do |tag|
          WebsiteContent.create!(name: tag, website_id: @website.id, tag_name_id: @tag_name.id)
        end
      end
    end
  end
end
