module AmexOpenForum
  require 'httparty'
  require 'crack'
  require 'open_forum_response'

  module ClassMethods
    def open_forum_api_key(key)
      @open_forum_api_key = key
    end
  end

  def self.included(base)
    base.send(:include, HTTParty)
    base.base_uri "api.openforum.com"
    base.extend(ClassMethods)
  end

  attr_accessor :open_forum_api_key

  def most_recent(options = {})

    unless @most_recent
      @most_recent          = OpenForumResponse.new
      @most_recent.key_proc = Proc.new { |key| key.to_sym }
      returned_hash         = (self.class.get("/v1/summaries/most-recent", :query => build_query(options))["EntityListOfContent"])

      returned_hash.each { |key, value| @most_recent[key] = value}
    end

    @most_recent
  end

  def most_viewed(options = {})
    @most_viewed ||= self.class.get("/v1/summaries/most-viewed", :query => build_query(options))
  end

  def most_commented(options = {})
    @most_commented ||= self.class.get("/v1/summaries/most-commented", :query => build_query(options))
  end

  def most_shared(options = {})
    @most_shared ||= self.class.get("/v1/summaries/most-shared", :query => build_query(options))
  end

  def article_details
    @article_details ||= self.class.get("/v1/summaries/articles/details", :query => build_query(options))
  end

  def video_details
    @video_details ||= self.class.get("/v1/summaries/videos/details", :query => build_query(options))
  end

private

  def build_query(options)
    {:apikey => self.class.instance_variable_get("@open_forum_api_key")}.merge(options)
  end

end
