root = "/home/www/apps/doctorshao/current"
working_directory root
pid "#{root}/tmp/pids/unicorn_shao.pid"
stderr_path "#{root}/log/unicorn_shao.stderr.log"
stdout_path "#{root}/log/unicorn_shao.log"

listen "/tmp/unicorn_shao.sock"
worker_processes 4
timeout 30
#preload_app true