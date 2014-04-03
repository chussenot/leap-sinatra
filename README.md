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
