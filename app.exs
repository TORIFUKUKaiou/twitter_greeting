Mix.install([
  {:oauther, "~> 1.1", github: "tobstarr/oauther", refs: "e81fc6588e52eeaf41cdf51ed9d968da46b0b67d", override: true},
  {:extwitter, "~> 0.12"}
])

ExTwitter.configure(
  consumer_key: System.get_env("TWITTER_CONSUMER_KEY"),
  consumer_secret: System.get_env("TWITTER_CONSUMER_SECRET"),
  access_token: System.get_env("TWITTER_ACCESS_TOKEN"),
  access_token_secret: System.get_env("TWITTER_ACCESS_TOKEN_SECRET")
)

{:ok, datetime} = DateTime.now("Etc/UTC")

"Hello\n(#{DateTime.to_string(datetime)})"
|> ExTwitter.update()
