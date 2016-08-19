ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|
  config.vm.define "java-env" do |a|
    a.vm.provider "docker" do |d|
      d.build_dir = "."
      d.build_args = ["-t=java-env"]
      d.ports = ["8080:8080"]
      d.force_host_vm = false
      d.name = "java-env"
      d.remains_running = true
      d.cmd = ["/src/demo/gradlew", "bootRun"]
      d.volumes = ["/Users/antonioterreno/code/spikes/demo:/src/demo/"]
    end
  end
end
