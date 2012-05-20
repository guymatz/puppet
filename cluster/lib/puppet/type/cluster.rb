Puppet::Type.newtype(:cluster) do
  @doc = "Creates a RedHat Cluster"
  
  ensurable
  
  newparam(:cluster) do
    desc "Name of cluster"
    
    isnamevar
  end
   
  newparam(:nodes) do
    desc "Nodes of cluster"
    
    
  end
  
  
end