class NewsService
    def initialize(message)
    end
  
    def get_news
        begin
            api_key = Rails.application.credentials.news.api_key
            req = URI.open('https://newsapi.org/v2/everything?'\
                    'q=Apple&'\
                    'sortBy=popularity&'\
                    'pageSize=20&'\
                    'apiKey=e48dc17f20a04ea1afe3ac7b808e62a6')

            req.read
        rescue 
            raise "A Error Happend"
        end
    end
  end