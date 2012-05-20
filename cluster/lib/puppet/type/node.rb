Puppet::Type.newtype(:node) do
  @doc = "Creates a RedHat Cluster Node"
  
  ensurable
  
  newparam(:node) do
    desc "Name of node"
    
    isnamevar
  end
   
  newparam(:nodeid) do
    desc "ID of node"
    validate do |value|
      unless value.is_a?(Integer)
        raise ArgumentError , 'Node ID must be integer'
      end
    end    
  end
  
  newparam(:votes) do
    desc "Votes for node"
    validate do |value|
      unless value.is_a?(Integer)
        raise ArgumentError , 'Votes must be integer'
      end
    end    
    
    isnamevar
  end
   
end