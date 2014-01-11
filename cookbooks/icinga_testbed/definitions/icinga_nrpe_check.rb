define icinga_nrpe_check: do
  icinga_nrpe_check = {
    :name => params[:name],
    :command => params[:command]
  }
  
  #template "/tmp/#{templ_test['brand']}.conf" do
  template "#{node['icinga']['nrpe']['include_dir']}/#{icinga_nrpe_check[:name]}.conf" do
    source "nrpe.conf.erb"
    variables(
      :name => templ_test[:name],
      :command => templ_test[:command]
    )
  end
end

