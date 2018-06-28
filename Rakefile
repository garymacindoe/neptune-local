require "bundler/gem_tasks"

task :default => :prepare

task :prepare do
  require 'open-uri'

  gremlin_server_url = 'https://archive.apache.org/dist/tinkerpop/3.3.2/apache-tinkerpop-gremlin-server-3.3.2-bin.zip'
  ext_dir            = 'lib/neptune/local/ext'
  local_path         = "#{ext_dir}/apache-tinkerpop-gremlin-server-3.3.2-bin.zip"
  unpack_path        = "#{ext_dir}/apache-tinkerpop-gremlin-server-3.3.2"

  unless Dir.exists?(unpack_path)
    mkdir_p ext_dir
    $stderr.print "Downloading Apache Tinkerpop Gremlin Server 3.3.2..."
    File.open(local_path, 'w') do |f|
      f.write(open(gremlin_server_url).read)
    end
    `unzip #{local_path} -d #{ext_dir}`
    rm local_path
    $stderr.puts 'done.'
  end
end
