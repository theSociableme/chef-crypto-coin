# Example recipe that uses the LWRP to install litecoind

# Get access to the LWRP and install prerequisites
include_recipe "crypto-coin::default"

# Download, compile and configure the cryptocoin
crypto_coin "HeisenbergHex" do
  repository    "https://github.com/HeisenbergCoin/HeisenbergHex.git"
  port          39547
  rpcpassword   "nojxxq2rryghg1p0ti7x"
end

# Start the cryptocoin node
service "HeisenbergHexd" do
  provider Chef::Provider::Service::Upstart
  action :start
end
