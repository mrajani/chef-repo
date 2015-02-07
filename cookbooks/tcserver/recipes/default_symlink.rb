link "/opt/groovy" do
  to node['java']['groovy_ver']
  #not_if { ::File.exists? ("/opt/groovy") }
end

