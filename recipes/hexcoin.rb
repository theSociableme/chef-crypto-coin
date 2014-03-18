# Example recipe that uses the LWRP to install litecoind

# Get access to the LWRP and install prerequisites
include_recipe "crypto-coin::default"

# Download, compile and configure the cryptocoin
crypto_coin "HeisenbergHex" do
  repository    "https://github.com/theSociableme/HeisenbergHex"
  rpcport        39547
  rpcpassword   "nojxxq2rryghg1p0ti7x"
  nodes  ['54.213.143.65','69.165.163.66','82.6.221.132','109.30.252.146','179.223.185.127','78.130.202.203','100.1.82.147','86.163.160.75','75.80.57.254','hex.bondni.com','hex.pitythepool.com','hex.hashfever.com','hex.internetarena.it','hex.hashrapid.com']
end

# Start the cryptocoin node
service "HeisenbergHexd" do
  provider Chef::Provider::Service::Upstart
  action :start
end
