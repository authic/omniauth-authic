# omniauth-authic

This gem is an [omniauth](https://github.com/intridea/omniauth) strategy for integrating an 
omniauth powered app with [Authic](https://www.authic.com), a hosted identity service and Oauth 2 provider.

## Installation

In your Rails 3 applications Gemfile add:

    gem 'omniauth-authic'

Run bundle install from the command line:

    bundle install

## Usage

#### Configure The Strategy

Configuration is much the same as any other omniauth strategy. The obvious addition is 'subdomain' which is required by Authic and setup when you subscribe with the service.

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :authic, AUTHIC_CLIENT_KEY, AUTHIC_CLIENT_SECRET, :subdomain => AUTHIC_CLIENT_SUBDOMAIN 
    end

#### Read about Omniauth Usage

If you haven't already done so, be sure to read about [omniauth](https://github.com/intridea/omniauth). It contains important information about how to setup you app for using omniauth and its strategies.

  

## Example App and Full Authic integration

Refer to [authic_client](https://github.com/authic/authic_client) for a working example of this omniauth-authic functioning within the Authic rails engine (authic_client is the preferred method of integrating a Rails 3 app with Authic)

## About Authic
Authic is a secure, brandable cloud authentication service that integrates into your web app in seconds leaving you to concentrate on your core business functionality.

## License

(The MIT License)

Copyright (c) 2012 Authic.com

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.