sudo docker build -t testi/radius .
sudo docker run -d -i --name freeradius    -p 1812:1812/udp    -p 1813:1813  -p 18120:18120 testi/radius 
