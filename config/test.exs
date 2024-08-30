import Config

config :pigeon, :test,
  fcm_key: System.get_env("GCM_KEY"),
  valid_fcm_reg_id: System.get_env("VALID_GCM_REG_ID")

config :pigeon, PigeonTest.LegacyFCM,
  adapter: Pigeon.LegacyFCM,
  key: System.get_env("GCM_KEY")
