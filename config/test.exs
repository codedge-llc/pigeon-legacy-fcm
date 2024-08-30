import Config

config :pigeon, :test,
  apns_cert: System.get_env("APNS_CERT"),
  apns_key: System.get_env("APNS_KEY_UNENCRYPTED"),
  apns_topic: System.get_env("APNS_TOPIC"),
  fcm_key: System.get_env("GCM_KEY"),
  valid_apns_token: System.get_env("VALID_APNS_TOKEN"),
  valid_fcm_reg_id: System.get_env("VALID_GCM_REG_ID")

config :pigeon, PigeonTest.LegacyFCM,
  adapter: Pigeon.LegacyFCM,
  key: System.get_env("GCM_KEY")
