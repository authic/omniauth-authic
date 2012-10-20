require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Authic < OmniAuth::Strategies::OAuth2
      
      option :name, "authic"
      option :scope, "email"
      option :subdomain, ""

      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end
      
      def initialize(app, options = {}, &block)
        super(app, {:name=> :authic}.merge(options), &block)
        options[:client_options][:site] = "http://#{options[:subdomain]}.authicstaging.com"
      end
      
      def raw_info
        @raw_info ||= access_token.get("/authic_user_info.json").parsed
      end

    end
  end
end