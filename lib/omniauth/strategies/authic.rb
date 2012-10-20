require 'omniauth-oauth2'
require 'active_support/core_ext/string'

module OmniAuth
  module Strategies
    class Authic < OmniAuth::Strategies::OAuth2
      
      option :name, "authic"
      option :scope, "email"
      option :subdomain, "" # Comes in from config
      option :domain, "authic.com"

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
      
      def client
        raise "You must specify your Authic subdomain in setup i.e. :subdomain => 'mysubdomain'" if options[:subdomain].blank?
        # Make sure we set the site correctly before creating a client
        options[:client_options][:site] = "http://#{options[:subdomain]}.#{options[:domain]}"
        super
      end
      
      def raw_info
        @raw_info ||= access_token.get("/authic_user_info.json").parsed
      end

    end
  end
end