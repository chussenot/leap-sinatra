Testing Leap Motion in a web interface
======================================

Clone the repository
`git clone git@github.com:chussenot/intime-api.git`

Install gems
`bundle install`

Install JS and CSS dependencies
`bower install`

Download Leap SDK
`https://developer.leapmotion.com/downloads`
Compile a ruby Wrapper
`https://support.leapmotion.com/entries/40627757-Any-plans-for-Ruby-Support-

Launch the Rack-based App
```
bundle exec foreman start
```
## Basic Application Tree
.
├── Gemfile
├── Gemfile.lock
├── Guardfile
├── Procfile
├── README.md
├── app.rb
├── assets
│   ├── javascripts
│   └── styleseets
├── config
│   └── boot.rb
├── config.ru
├── lib
│   └── wave.rb
└── log

# Event Source
http://www.html5rocks.com/en/tutorials/eventsource/basics/?redirect_from_locale=fr