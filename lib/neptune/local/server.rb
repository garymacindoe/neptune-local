module Neptune
  module Local
    class Server

      GREMLIN_SERVER_DIR = File.join(File.dirname(__FILE__), 'ext/apache-tinkerpop-gremlin-server-3.3.2')

      def self.start
        Dir.chdir(GREMLIN_SERVER_DIR) do
          system 'bin/gremlin-server.sh start'
        end
      end

      def self.stop
        Dir.chdir(GREMLIN_SERVER_DIR) do
          system 'bin/gremlin-server.sh stop'
        end
      end
      
    end
  end
end
