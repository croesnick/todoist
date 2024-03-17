import Config

config :exvcr, [
  vcr_cassette_library_dir: "test/fixtures/vcr_cassettes",
  filter_sensitive_data: [
    [pattern: System.get_env("TODOIST_ACCESS_TOKEN"), placeholder: "ACCESS_TOKEN"]
  ]
]
