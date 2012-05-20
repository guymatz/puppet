Puppet::Type.newtype(:fence) do
  @doc = "Creates a RedHat Cluster Fence"
  
  ensurable
  
  newparam(:fencedevice) do
    desc "Name of Fence Device"
    
    isnamevar
  end
  
  newparam(:agent) do
    desc "IP of cluster Node"
    
  end
  
  newparam(:auth) do
    desc "Type of authentication for fence device"
    
    validate do |value|
      unless value =~ /\d+\.\d+\.\d+\.\d+/
        raise ArgumentError , '%s is not a valid IP' % value
      end
    end    
  end
    
  newparam(:ipaddr) do
    desc "IP of cluster Node"
    
    validate do |value|
      unless value =~ /\d+\.\d+\.\d+\.\d+/
        raise ArgumentError , '%s is not a valid IP' % value
      end
    end    
  end
  
  
  newparam(:lanplus) do
    desc "IP of cluster Node"
    
    validate do |value|
      unless ['yes','no'].include?(value)
        raise ArgumentError , '%s is not a valid lanplus option' % value
      end
    end    
  end
    
  newparam(:login) do
    desc "Username for Fence device"
    
  end
    
  newparam(:passwd) do
    desc "Username for Fence device"
    
  end
     
end