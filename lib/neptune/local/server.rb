module Neptune
  module Local
    class Server

      GREMLIN_SERVER_DIR = File.join(File.dirname(__FILE__), 'ext/apache-tinkerpop-gremlin-server-3.3.2')

      attr_reader :debug, :gremlin_home, :gremlin_yaml, :log_dir, :pid_dir, :runas, :java_home, :java_options

      def initialize(debug: nil,
                     gremlin_home: nil,
                     gremlin_yaml: nil,
                     log_dir: nil,
                     pid_dir: nil,
                     runas: nil,
                     java_home: nil,
                     java_options: nil)
        @debug = debug
        @gremlin_home = gremlin_home
        @gremlin_yaml = gremlin_yaml
        @log_dir = log_dir
        @pid_dir = pid_dir
        @runas = runas
        @java_home = java_home
        @java_options = java_options
      end

      def start
        pid = Process.spawn(to_env, 'bin/gremlin-server.sh', 'start', :chdir => GREMLIN_SERVER_DIR)
        Process.wait(pid)
        raise "Starting the gremlin server returned non-zero exit status: #{$?.exitstatus}" unless $?.success?
      end

      def stop
        pid = Process.spawn(to_env, 'bin/gremlin-server.sh', 'stop', :chdir => GREMLIN_SERVER_DIR)
        Process.wait pid
        raise "Stopping the gremlin server returned non-zero exit status: #{$?.exitstatus}" unless $?.success?
      end

      def restart
        pid = Process.spawn(to_env, 'bin/gremlin-server.sh', 'restart', :chdir => GREMLIN_SERVER_DIR)
        Process.wait pid
        raise "Restarting the gremlin server returned non-zero exit status: #{$?.exitstatus}" unless $?.success?
      end

      private

      def to_env
        {
            'DEBUG' => @debug,
            'GREMLIN_HOME' => @gremlin_home,
            'GREMLIN_YAML' => @gremlin_yaml,
            'LOG_DIR' => @log_dir,
            'PID_DIR' => @pid_dir,
            'RUNAS' => @runas,
            'JAVA_HOME' => @java_home,
            'JAVA_OPTIONS' => @java_options
        }
      end
      
    end
  end
end
