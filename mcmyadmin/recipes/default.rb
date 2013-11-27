#src_filename = [:mcmyadmin][:mono][:etczip]
src_filepath = '/tmp'
#extract_path = "#{[:mcmyadmin][:mono][:etcdir]}/"

#remote_file src_filepath do
#  source "#{node[:mcmyadmin][:remote][:mcmyadminurl]}/#{src_filename}"
#end

bash 'setup_mono' do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
cd /tmp
wget http://mcmyadmin.com/Downloads/etc.zip
sudo unzip etc.zip -d /usr/local
echo 2 | sudo alternatives --config java
cd /mnt/minecraft/mcmyadmin && screen -dmS  McMyAdmin ./MCMA2_Linux_x86_64
EOH
end