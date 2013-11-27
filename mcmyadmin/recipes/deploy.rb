
src_filename = [:mcmyadmin][:mono][:etczip]
src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"
extract_path = "#{[:mcmyadmin][:mono][:etcdir]}/"

remote_file src_filepath do
  source "#{node[:mcmyadmin][:remote][:mcmyadminurl]}/#{src_filename}"
end

bash 'setup_mono' do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    mkdir -p #{extract_path}
    unzip #{src_filename} -d #{extract_path}
    EOH
end