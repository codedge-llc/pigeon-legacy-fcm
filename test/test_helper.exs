ExUnit.start()

workers = [
  PigeonTest.LegacyFCM
]

Supervisor.start_link(workers, strategy: :one_for_one)
