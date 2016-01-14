# domaintally

Rubygem for DomainTally domain information API. [domaintally.com](https://www.domaintally.com/).
Visit domaintally.com to get your access_token. And refer to the API Docs [here](https://www.domaintally.com/page/access-the-metricsbot-api/).


## Installation

```
gem install domaintally
```


## Usage

```ruby
Domaintally.api_access_token = "your_access_token_here"
Domaintally.domain('example.com')
Domaintally.ranking('example.com')
Domaintally.whois('example.com')
```

You will receive the following `Hash` as a response (for successful lookups):


## Running tests

```
DOMAINTALLY_ACCESS_TOKEN=<access_token> rake test
```

Copyright © 2016 Domaintally.com
