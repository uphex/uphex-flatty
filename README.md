uphex-flatty
============

Flatty theme.

Usage
-----

```ruby
require 'sinatra/base'
require 'uphex-flatty'

class App < Sinatra::Base
  register Uphex::Flatty
end

App.run!
```

Your app will have compiled `/javascripts/app.js` and `/stylesheets/application.css` for the flatty theme!
